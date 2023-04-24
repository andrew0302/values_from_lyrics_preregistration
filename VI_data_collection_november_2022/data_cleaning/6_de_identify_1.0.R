
library('here')
library('data.table')

source(here("VI_data_collection_november_2022", 'data_cleaning', '5_pivot_long_1.0.R'))

# create anonymized participant_ID based on Prolific ID:
de_dupe_long_df$participant_ID <- sapply(de_dupe_long_df$PROLIFIC_PID, digest::digest, algo = "md5") 

# remove prolific ID
de_dupe_long_df <- de_dupe_long_df |> select(-c(PROLIFIC_PID, ResponseId))

# reorder columns
de_dupe_long_df <- de_dupe_long_df |> select(participant_ID, everything())

working_df <- de_dupe_long_df

rm(de_dupe_long_df)

save(working_df, file = here("VI_data_collection_november_2022", "intermediary_data", "working_df.RDS"))
