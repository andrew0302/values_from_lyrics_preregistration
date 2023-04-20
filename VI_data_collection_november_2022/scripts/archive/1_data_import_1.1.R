# 1_data_import
# author: Andrew M. Demetriou

library('data.table')   # read in .csv with fread
library('here')         # file logistics
library('dplyr')        # code logistics

# path with the raw data
data_file_path <- here('VI_data_collection_november_2022', "response_data")



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
responses_dt <- responses_dt[DistributionChannel != "preview"]

# adjust duplicate column names
colnames(responses_dt) <- responses_dt |>
  colnames() |>
  make.unique()

rm(complete_responses_dt, partial_responses_dt)


# Prolific Data files

demogs_dt <- fread(here(data_file_path, "prolific_export_637357bf150585a4675a4b6b.csv"))
demogs_dt[, PROLIFIC_PID := `Participant id`]

# merge datasets
all_dt <- merge.data.table(responses_dt, demogs_dt, by = 'PROLIFIC_PID', all.x = T)

rm(data_file_path, demogs_dt, responses_dt)


# create anonymized participant_ID column using hash:
all_dt$participant_ID <- sapply(all_dt$PROLIFIC_PID, digest::digest, algo = "md5")
                                

# remove identifying columns
all_dt <- all_dt[, ! c(
  "IPAddress", "RecipientLastName", 
  "RecipientFirstName", "RecipientEmail", 
  "LocationLatitude", "LocationLongitude", "StartDate", 
  "EndDate", "Status.x", "RecordedDate", 
  "ExternalReference", "DistributionChannel", 
  "UserLanguage", "Progress", "Participant Consent", 
  "Finished", 
#  "PROLIFIC_PID", "ResponseId",
  "Participant id", "Prolific_ID", 
  "Status.y", "Completion code", "Archived at", 
  "Reviewed at", "Started at", "Completed at", 
  "Submission id", 
  "overall_time_Click Count", "overall_time_First Click", 
  "overall_time_Last Click", "overall_time_Page Submit"), 
  with = FALSE]


# reorder columns
all_dt <-all_dt |> select(participant_ID, everything())