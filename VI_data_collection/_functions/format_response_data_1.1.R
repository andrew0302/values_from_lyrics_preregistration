# author: Andrew M. Demetriou

library("here")
library("tidyverse")
library("data.table")

# load dataset
load(here("VI_data_collection", "_data","survey_response_data", "response_df.RDS"))

# create a working dataset
responses_dt <- as.data.table(response_df)
rm(response_df)

# replace 'song' with 'item_ID' as column name
setDT(responses_dt)

# subset columns for values questions:
responses_dt <- responses_dt %>%
  select("participant_ID", "item_ID", "w", "f", 
         paste0("1_", seq(1, 10)),
         "c")

# convert to numeric
columns <- c(paste0("1_", seq(1, 10)), "c")
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

# include names of variables
values<-c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")

# add row number to sync with Mplus
responses_dt$row_number <- seq(1:nrow(responses_dt))
# order by item_ID
responses_dt <- responses_dt %>% arrange(as.numeric(item_ID)) %>% 
  select(row_number, participant_ID, item_ID, everything())

rm(columns)