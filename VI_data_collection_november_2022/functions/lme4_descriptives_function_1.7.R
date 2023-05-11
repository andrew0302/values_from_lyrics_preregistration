
# author: "Andrew M. Demetriou"


library("here")            # file logistics
library("broom.mixed")     # data wrangling
library("dplyr")           # data wrangling
library("lme4")            # estimating random effects
library("tidyverse")       # rownames to column
library("data.table")      # retrieve random effect confidence intervals
library('parallel')        # set the number of usable cores
library('future.apply')    # parallelize apply() functions


#compute number of cores in cluster for parallelization
workers <- detectCores()-1
future::plan(multisession, workers = workers)


# function to create a named list of data frames
makeNamedList <- function(...){
  structure(list(...), names = as.list(substitute(list(...)))[-1L])
}



# estimate a mixed effects model with lmer, for each DV
run_mods_f <- function(df,
  
  #each value becomes a dependent variable in the model                           
  DVs = c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")
  ){
  
  
  #run the same model on each dependent variable
  results <- future_lapply(DVs, function(dv, data=df){
      
    #run model to estimate intercepts
    mod <- lmer(get(dv) ~ (1|subject_ID) + (1|item_ID), data=df) 
      
      })
}



# estimate random intercept standard deviation for items and participants
get_random_intercept_sd_dt <- function(
  
  #list of models
  mods,
  
  #each value becomes a dependent variable in the model      
  DVs = c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")
  ){
  
  mods <- setNames(mods, DVs)
  
  random_intercepts <- lapply(mods, function(mod){
      
      # coax into a tibble, and then a data.table
      mod <- mod  %>% tidy() %>% setDT() 
        
      #pivot to wide so columns are the DVs from above
      mod <- dcast(mod, .~ group, value.var='estimate') 
        
      #pick columns to keep, add a column to indicate the dv
      mod <- mod[,.(Residual, item_ID, subject_ID)]
  }
    )
  
}





# confidence intervals for SD estimates
get_random_confints_dt <- function(mods,
  
  #each value becomes a dependent variable in the model                           
  DVs = c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")
  ){
   
   mod_confints <- future_lapply(mods, function(x){
     as.data.frame(confint(x, oldNames=FALSE))
})
      
   mod_confint_dt <- future_lapply(mod_confints, function(x){

     #coax to data table, and select specific cells
     setDT(x, keep.rownames= "estimate")[1:2, 1:3] %>%

     #convert to wide format
     dcast(., ...~estimate, value.var=c("2.5 %", "97.5 %")) %>%

     #delete useless column
     .[, .:= NULL] %>%

     #rename columns
     setnames(., 
       old = c(
        "2.5 %_sd_(Intercept)|item_ID", 
        "2.5 %_sd_(Intercept)|subject_ID", 
        "97.5 %_sd_(Intercept)|item_ID", 
        "97.5 %_sd_(Intercept)|subject_ID"), 
       new = c(
         "item_ID_lower", 
         "subject_ID_lower", 
         "item_ID_higher", 
         "subject_ID_higher"))
     }) 
      
     #add names to list representing each dependent variable 
     mod_confint_dt <- setNames(mod_confint_dt, DVs)
} 



# gather random effects for each model into a single data frame
list_to_dt <- function(dt_list){
  
  #create empty dataframe
  colnames <- names(dt_list)
  
  #convert list to data table
  results_dt <-rbindlist(dt_list)
  
  #add column representing dependent variable
  results_dt[, model := colnames]
}


#put previous functions together
assemble_random_effect_sd_dt <- function(df){

  #run models
  mods               <- run_mods_f(df)
    
  #get a list of one-row vectors for random intercept and residual
  list_of_intercepts <- get_random_intercept_sd_dt(mods)
  
  #get a list of confidence intervals for random intercepts
  list_of_confints   <- get_random_confints_dt(mods)
  
  #create data table from list of random intercepts
  intercepts_dt      <- list_to_dt(list_of_intercepts)
  
  #create data table for confidence intervals
  confints_dt        <- list_to_dt(list_of_confints)
  
  #merge the two data tables, using the DV as the key
  results_dt         <- intercepts_dt[confints_dt, on=.(model)]
  
  #order columns
  setcolorder(results_dt, c("model", "item_ID", "item_ID_lower", "item_ID_higher", "subject_ID", "subject_ID_lower", "subject_ID_higher", "Residual"))
} 


# get mean of .fitted estimates / model predicted estimates
get_within_estimates <- function(
  
  #list of models
  mods,
  
  #each value becomes a dependent variable in the model      
  DVs = c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")
  ){
  
  mods <- setNames(mods, DVs)
  
  within_estimates <- lapply(mods, function(mod){
    
    mod <- augment(mod) |> 
      select(subject_ID, item_ID,.fitted) |> 
      group_by(item_ID) |>
      summarize(mean = mean(.fitted))
      
    return(mod)
  })
  
} 


# item intercepts for each song lyric
get_individual_intercepts <- function(
    
  # list of models
  mods,
  
  # each value becomes a dependent variable in the model      
  DVs = c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")
  ){
  
  mods <- setNames(mods, DVs)
  
  random_effects <- lapply(mods, function(mod){
    mod <- ranef(mod)
    mod <- mod$item_ID
    mod <- rownames_to_column(mod)
    colnames(mod) <- c("item_ID", "intercept")
    return(mod)
  })
}


assemble_intercept_and_predicted_dt <- function(df){
  
  #run models
  mods              <- run_mods_f(df)
  
  # get individual intercepts
  individual_intercepts <- get_individual_intercepts(mods)
  
  # bind list into single dataframe
  individual_intercepts <- rbindlist(individual_intercepts, idcol="value")
  
  # get mean of predicted values by item_ID
  within_estimates <- get_within_estimates(mods)
  
  # bind list into single dataframe
  within_estimates <- rbindlist(within_estimates, idcol = "value")

  # merge the two
  intercept_and_predicted_dt <- merge(individual_intercepts, within_estimates, by = c('value', 'item_ID'))

}

