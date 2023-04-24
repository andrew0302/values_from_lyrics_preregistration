library('here')
library('data.table')
library('dplyr')
library('stringr')
library('tidyr')

source(here("VI_data_collection_november_2022", 'data_cleaning', '2_fix_column_names_1.0.R'))

# character vector of relevant column names
#cols <- temp_df |> select(contains(c(
cols <- all_dt |> select(contains(c(  
  "-w", "-f", "1_1", "1_2", "1_3", "1_4", "1_5", 
  "1_6", "1_7", "1_8", "1_9", "1_10", "m_", "-c"
  ))) |> colnames()

# convert columns to numeric, blanks to NA
#temp_df[,cols] <- lapply(cols, function(x)as.numeric(temp_df[[x]]))
all_dt[,cols] <- lapply(cols, function(x)as.numeric(all_dt[[x]]))

# convert free text column to NA
all_dt <- all_dt |> 
  #select(contains("-r")) |> 
  mutate(across(where(is.character), ~na_if(., "")))

# for every row
for(row in 1:nrow(all_dt)){
  
  # for every column
  for(col in 1:ncol(all_dt)){
    
    # if the column contains '-w'
    if(grepl("-w", colnames(all_dt[,..col]))==T){
      
      # if the column is not NA
      if(is.na(all_dt[row, ..col])==F){
       
        # for the next 11 columns in that row, replace them with:
        all_dt[row, seq(1,11)+col] <- setnafill(
          
          # the same values, but with the NA replaced with 0
          all_dt[row, seq(1,11)+col, with=FALSE], fill=0)
   }
  }
 }
}