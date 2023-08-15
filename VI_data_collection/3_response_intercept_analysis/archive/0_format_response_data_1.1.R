# author: Andrew M. Demetriou

# format dataframe for analysis of participant annotations of lyrics
# i.e. only questions regarding each set of lyrics

library("here")
library("tidyverse")
library("data.table")

### data from current survey ###

load(here("VI_data_collection", "_data","survey_response_data", "response_df.RDS"))
load(here("VI_data_collection", "_data","survey_response_data", "response_df_c.RDS"))

format_response_df <- function(df){
  # convert to data table
  setDT(df)

  # select only relevant columns
  responses_dt <- df %>%
    select("participant_ID", "item_ID", 
           "w", "f", 
           paste0("1_", seq(1, 10)),
           "c")
  
  # create vector of column names
  columns <- c(paste0("1_", seq(1, 10)), "c")
  # convert response columns to numeric
  responses_dt[, (columns):= lapply(.SD, as.numeric), .SDcols = columns]
  
  # rename variables
  responses_dt <- responses_dt %>%
    rename(writer=w, 
           familiar = f, 
           POWER = `1_1`, 
           ACHIEVEMENT = `1_2`, 
           HEDONISM = `1_3`, 
           STIMULATION = `1_4`, 
           SELF = `1_5`, 
           UNIVERSALISM = `1_6`, 
           BENEVOLENCE = `1_7`, 
           TRADITION = `1_8`, 
           CONFORMITY = `1_9`, 
           SECURITY = `1_10`, 
           confidence = c
    ) %>%
    # reorder variables
    select(participant_ID, item_ID, 
           POWER, ACHIEVEMENT, HEDONISM, 
           STIMULATION, SELF, UNIVERSALISM, 
           BENEVOLENCE, TRADITION, 
           CONFORMITY, SECURITY, 
           writer, familiar, confidence)
  
  # add row number to sync with Mplus
  responses_dt$row_number <- seq(1:nrow(responses_dt))
  
  # order by item_ID
  responses_dt <- responses_dt %>% arrange(as.numeric(item_ID)) %>% 
    select(row_number, participant_ID, item_ID, everything())
  
}

responses_dt   <- format_response_df(response_df)
responses_dt_c <- format_response_df(response_df_c)

### data from pilot study ###
data_file_path <- here("II_rater_pilot", "response_data")

# file name
file_name <- "annotation_number_estimation _2.2_November 28, 2021_07.51.csv"

# organize qualtrics output
source(here("II_rater_pilot", "scripts", "data_file_re-shape_1.0.R"))

# read in file
responses_dt_p <- fread(here(data_file_path, file_name)) %>%
  data_file_reshape(., file_name)

responses_dt_p$participant_ID <- sapply(responses_dt_p$participant_ID, digest::digest, algo = "md5") 

responses_dt_p$row_number <- seq(1:nrow(responses_dt_p))

### dataframe with all responses ###

# include names of variables
values<-c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")

responses_dt_a <- rbind(
  responses_dt   %>% select(participant_ID, item_ID, all_of(values)), 
  responses_dt_p %>% select(participant_ID, item_ID, all_of(values)))

responses_dt_a$row_number <- seq(1:nrow(responses_dt_a))


response_dfs <- list(responses_dt, responses_dt_c, responses_dt_p, responses_dt_a)

rm(response_df, response_df_c, 
   format_response_df, data_file_reshape, 
   file_name, data_file_path, 
   responses_dt, responses_dt_c, responses_dt_p, responses_dt_a
   )