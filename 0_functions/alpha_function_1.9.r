# author: andrew m. demetriou

library("ltm")             # cronbach's alpha
library("here")            # file logistics
library("tidyverse")       # data wrangling 
library("purrr")           # mapping functions
library("ggplot2")         # visualization

# ensure this script returns the same results on each run
#set.seed(42) #the answer to life, the universe, and everything

rename_columns <- function(df){
  
  #set the column names to use in the dataset
  colnames <- c(
    #item and participant ID variables
    "subject_ID", "item_ID",

    #the 10 variables that represent ratings of each value
    "y1", "y2", "y3", "y4", "y5", "y6", "y7", "y8", "y9", "y10")
  
  #set the column names of the dataframe to be those defined above
  colnames(df) <- colnames
  
  return(df)
}


pivot_dataframe <- function(df, column){
  
  df <- rename_columns(df)
  
  df <- df %>% 
  
    # select ID columns
    # and the variable that will define the dataset
    dplyr::select(subject_ID, item_ID, column) %>%
    
    # restructure dataframe so that columns are the individual items
    # and the values in the columns are the scores for the variable
    pivot_wider(values_from = column, names_from = item_ID)
}


make_list_of_pivoted_dataframes <- function(df){
  
  #get a list of column names,which are the variables in the dataset
  column_list <- colnames(df %>% dplyr::select(-subject_ID, -item_ID))
  
  #create an empty list
  df_list <- list()
  
  #iterate over the list of variable names
  for(i in column_list){
    #for each variable, make a pivoted dataframe and add to the list
    df_list[[i]] <- assign(
      
      #name the dataframe "df_" and the name of the variable
      paste0("df_", i),
      
      #pivot the dataframe
      pivot_dataframe(df, i))
  }
  
  return(df_list) 
}

get_alpha <- function(df, n) {
  
  # get the canonical mean of the variable
  canon <- df %>%
      #select only stimuli columns
      dplyr::select(-subject_ID) %>%
      #group by each column
      group_by() %>%
      #calculate means of all columns
      summarize_all(mean, na.rm=TRUE) %>%
      #transpose
      t()
  
  # sample your full dataset
  data_sample <- df %>%
    sample_n(n) %>%
    dplyr::select(-subject_ID) # select only columns with your stimuli
  
  # calculate cronbach's alpha
  a <- data_sample |> 
    t() |> 
    # return standardized estimate
    cronbach.alpha(standardized = TRUE, na.rm=TRUE)
    alpha <- a$alpha
    

  # calculate mean sample ratings
  sample_means <- data_sample %>%
    group_by() %>%
    summarise_all(mean) %>%
    t()
  
  # calculate correlation between sample mean ratings and canon
  r <- cor(sample_means, canon)[[1,1]]
  
  # return relevant data
  tibble(
    n = n,
    alpha = alpha,
    r = r
  )
}

samples_of_alphas <- function(
  df, 
  n_samples = 10, 
  n_raters = seq(5, 50, by = 5)
  ){
  #draw n_raters number of samples n_samples number of times
  alpha_tibble <- rep(n_raters, each = n_samples) %>% 
    purrr::map_df( function(n) { 
      get_alpha(df, n)
    })
  return(alpha_tibble)
}


make_list_of_alpha_tibbles <- function(
  df, 
  n_samples = 10, 
  n_raters = seq(5, 50, by = 5)
  ){
  
  df <- rename_columns(df)
  
  #get a list of column names which are the variables in the dataset
  column_list <- colnames(df %>% dplyr::select(-subject_ID, -item_ID))

  #create a df for every dependent variables
  df_list <- df %>% 
    make_list_of_pivoted_dataframes() 
  
  #create an empty list
  alpha_tibble_list <- list()

  #iterate over the list of variable names
  counter <- 1
  for(i in column_list){

    #for each variable, make a tibble of resampled alphas
    alpha_tibble_list[[counter]] <- samples_of_alphas(df_list[[counter]], n_samples, n_raters)
      
    #name the tibble after the variable
    names(alpha_tibble_list)[[counter]] <- column_list[counter]
    
    #update counter
    counter <- counter+1
  }
  return(alpha_tibble_list)
}


summarize_alpha_tibble <- function(
  alpha_tibble, 
  alpha_threshold=0.8
){

  alpha_tibble %>%
    #group by the number of sub samples
    group_by(n) %>%
    summarise(
      `median alpha` = round(quantile(alpha, .5, na.rm=TRUE), 2),
      `90% alpha >` = round(quantile(alpha, .1, na.rm=TRUE), 2),
      `alpha >= 0.8` = round(mean(alpha >= alpha_threshold, na.rm=TRUE), 2),
      `median r` = round(quantile(r, .5, na.rm=TRUE), 2),
      `90% r >` = round(quantile(r, .1, na.rm=TRUE), 2)
    )
}

make_tibble_of_alpha_tibble_summaries <- function(
  df, 
  n_samples = 10, 
  n_raters = seq(5, 50, by = 5), 
  alpha_threshold=0.8
){

  # make a list of alpha tibbles from the input dataframe
  list_of_alpha_tibbles <- make_list_of_alpha_tibbles(df, n_samples, n_raters)
  
  # define the names of the columns
  column_names <- c("variable", "median alpha", "90% alpha", "alpha >= 0.8","median r","90% r")
  # create an empty dataframe
  results_df <- data.frame(matrix(nrow=0, ncol=length(column_names))) 
  # rename the columns of the empty dataframe
  colnames(results_df) <- column_names

  count <- 1
  for(i in list_of_alpha_tibbles){
    # create a summary of the alpha tibble for one variable
    summary <- summarize_alpha_tibble(list_of_alpha_tibbles[[count]], alpha_threshold)
    # create a column to indicate which variable the summary is for
    summary$variable <- rep(names(list_of_alpha_tibbles[count]), nrow(summary))
    # add the summary to the results dataframe
    results_df <- rbind(results_df, summary)
    #add one to count
    count <- count + 1
  }
  return(results_df)
}


minimum_n_by_alpha <- function(
  df, 
  n_samples = 10, 
  n_raters = seq(5, 50, by = 5), 
  alpha_threshold=0.8){
  
  #create a tibble of alpha summary tibbles
  alpha_summary_tibble <- make_tibble_of_alpha_tibble_summaries(df, n_samples, n_raters)

  #return only rows that meet the alpha_threshold criteria
  results_df <- alpha_summary_tibble[alpha_summary_tibble[,3] >= alpha_threshold,] %>%
    # then, for each variable
    group_by(variable) %>% 
    #return row with the lowest value for n
    slice(which.min(n))
}


