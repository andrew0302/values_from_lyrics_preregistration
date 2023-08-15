## ----setup, include=FALSE-------------------------------------------------
library('data.table')   # read in .csv with fread
library('here')         # file logistics
library('dplyr')        # code logistics
library('tidyverse')    # code logitstics


## -------------------------------------------------------------------------
# path with the raw data
data_file_path <- here('VI_data_collection', "_data", "survey_response_data")

# list files of files
list.files(data_file_path)


## -------------------------------------------------------------------------
# Qualtrics data files:

## complete responses
complete_responses_dt <- fread(here(data_file_path, "annotation_run_1_April 5, 2023_06.23.csv"))
# remove junk on first two rows
complete_responses_dt <- complete_responses_dt[3:.N]

## partial responses
partial_responses_dt <- fread(here(data_file_path, "annotation_run_1_April 5, 2023_06.28.csv"))
# remove junk on first two rows
partial_responses_dt <- partial_responses_dt[3:.N]

# combine data frames
responses_dt <- rbind(complete_responses_dt, partial_responses_dt)

# select rows that are not test data
responses_dt          <- responses_dt[DistributionChannel != "preview"]
complete_responses_dt <- complete_responses_dt[DistributionChannel != "preview"]

rm(partial_responses_dt)


## -------------------------------------------------------------------------
# adjust duplicate column names
de_dupe_column_names <- function(df){
  colnames(df) <- df |> colnames() |> make.unique()
  return(df)
}

responses_dt <- de_dupe_column_names(responses_dt)
complete_responses_dt <- de_dupe_column_names(complete_responses_dt)

rm(de_dupe_column_names)


## -------------------------------------------------------------------------
# Prolific Data files

demogs_dt <- fread(here(data_file_path, "prolific_export_637357bf150585a4675a4b6b.csv"))
demogs_dt[, PROLIFIC_PID := `Participant id`]

# merge datasets
all_dt      <- merge.data.table(responses_dt, demogs_dt, by = 'PROLIFIC_PID', all.x = T)
complete_dt <- merge.data.table(complete_responses_dt, demogs_dt, by = 'PROLIFIC_PID', all.x = T)

rm(data_file_path, demogs_dt, responses_dt, complete_responses_dt)


## -------------------------------------------------------------------------
# create anonymized participant_ID column using hash:
all_dt$participant_ID <- sapply(all_dt$PROLIFIC_PID, digest::digest, algo = "md5") 
complete_dt$participant_ID <- sapply(complete_dt$PROLIFIC_PID, digest::digest, algo = "md5") 


## -------------------------------------------------------------------------
# place 'Finished' column at the end of the df
all_dt <- all_dt %>% relocate(Finished, .after = last_col())
complete_dt <- complete_dt %>% relocate(Finished, .after = last_col())


## -------------------------------------------------------------------------
# remove identifying columns
all_dt <- all_dt[, ! c(
  "IPAddress", "RecipientLastName", 
  "RecipientFirstName", "RecipientEmail", 
  "LocationLatitude", "LocationLongitude", "StartDate", 
  "EndDate", "Status.x", "RecordedDate", 
  "ExternalReference", "DistributionChannel", 
  "UserLanguage", "Progress", "Participant Consent", 
#  "Finished", 
#  "PROLIFIC_PID", 
  "ResponseId",
  "Participant id", "Prolific_ID", 
  "Status.y", "Completion code", "Archived at", 
  "Reviewed at", "Started at", "Completed at", 
  "Submission id", 
  "overall_time_Click Count", "overall_time_First Click", 
  "overall_time_Last Click", "overall_time_Page Submit"), 
                         with = FALSE]


# remove identifying columns
complete_dt <- complete_dt[, ! c(
  "IPAddress", "RecipientLastName", 
  "RecipientFirstName", "RecipientEmail", 
  "LocationLatitude", "LocationLongitude", "StartDate", 
  "EndDate", "Status.x", "RecordedDate", 
  "ExternalReference", "DistributionChannel", 
  "UserLanguage", "Progress", "Participant Consent", 
#  "Finished", 
#  "PROLIFIC_PID", 
  "ResponseId",
  "Participant id", "Prolific_ID", 
  "Status.y", "Completion code", "Archived at", 
  "Reviewed at", "Started at", "Completed at", 
  "Submission id", 
  "overall_time_Click Count", "overall_time_First Click", 
  "overall_time_Last Click", "overall_time_Page Submit"), 
                         with = FALSE]


## -------------------------------------------------------------------------
# reorder columns
all_dt      <- all_dt |> select(participant_ID, everything())
complete_dt <- complete_dt |> select(participant_ID, everything())


## -------------------------------------------------------------------------
# output notebook as R script
knitr::purl(input = here('VI_data_collection', "1_response_data_cleaning", "1_data_format_1.3.Rmd"), 
            output = here('VI_data_collection', "1_response_data_cleaning", "1_data_format_1.3.R"))

