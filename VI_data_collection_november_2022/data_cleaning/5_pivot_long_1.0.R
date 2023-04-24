
library('here')
library('data.table')
library('dplyr')
library('stringr')
library('tidyr')

source(here("VI_data_collection_november_2022", 'data_cleaning', '4_remove_duplicates_1.0.R'))

# pivot raw data to long format
de_dupe_long_df <- de_dupe_df |> 
  
  # pivot longer had an issue with mixed column types
  # make everything a character vector
  mutate(across(everything(), as.character)) |>
  
  # pivot to long format
  pivot_longer(
    
    # range of columns
    #cols = `828136-w`:`1027136-r`, 
    #cols = `828136-w`:`2107983-r`, 
    cols = `828136-w`:`213759518-r`, 
  
    # two new columns: song and question
    names_to = c('song', 'question'),
  
    # separate names by "-"
    names_sep = "-", 
  
    # new columns for participant responses
    values_to = "response", 
  
    # drop empty cells
    values_drop_na = TRUE
)

# pivot schwartz value questions to wide format
de_dupe_long_df <- de_dupe_long_df |> 
  pivot_wider(
    names_from = question, 
    values_from = response
  )

rm(de_dupe_df)


