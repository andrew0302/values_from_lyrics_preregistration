
library('here')
library('data.table')
library('dplyr')
library('stringr')
library('tidyr')

load(file = here("VI_data_collection_november_2022", "intermediary_data", "all_dt.RDS"))


de_dupe_df <- all_dt
de_dupe_df <- de_dupe_df[ResponseId != "R_Dp1VL9Eduv8pRV7"]
de_dupe_df <- de_dupe_df[ResponseId != "R_2456rueICK0vyBX"]

rm(all_dt)


