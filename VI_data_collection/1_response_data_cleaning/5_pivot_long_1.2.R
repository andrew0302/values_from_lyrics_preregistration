
# title: "pivot to long format"
# author: "Andrew M. Demetriou"
# date: "2023-04-06"


library('here')
library('data.table')
library('dplyr')
library('stringr')
library('tidyr')

source(here("VI_data_collection", '1_response_data_cleaning', '4_remove_duplicates_1.2.R'))

pivot_function <- function(df){
  
  # pivot to long format
  df_long <- df |>
    # pivot longer had an issue with mixed column types
    # make everything a character vector
    mutate(across(everything(), as.character)) |>
    
    # pivot to long format
    pivot_longer(
      
      # range of columns
      cols = `828136-w`:`213759518-r`, 
      
      # two new columns: song and question
      #names_to = c('song', 'question'),
      names_to = c('item_ID', 'question'),
      
      # separate names by "-"
      names_sep = "-", 
      
      # new columns for participant responses
      values_to = "response", 
      
      # drop empty cells
      values_drop_na = TRUE
    )
  
  # pivot only questions columns to wide format
  df_long <- df_long |> 
    pivot_wider(
      names_from = question, 
      values_from = response
    )
  
  return(df_long)
}


all_dt_long      <- pivot_function(all_dt)
complete_dt_long <- pivot_function(complete_dt)

rm(pivot_function, all_dt, complete_dt)