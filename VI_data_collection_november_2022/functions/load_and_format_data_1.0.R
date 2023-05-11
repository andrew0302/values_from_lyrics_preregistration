# load dataset
load(here("VI_data_collection_november_2022", "intermediary_data", "public_df.RDS"))

# create a working dataset
responses_dt <- as.data.table(public_df)
rm(public_df)

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
  select(participant_ID, item_ID, 
         POWER, ACHIEVEMENT, HEDONISM, 
         STIMULATION, SELF, UNIVERSALISM, 
         BENEVOLENCE, TRADITION, 
         CONFORMITY, SECURITY, 
         writer, familiar, confidence)


values<-c("POWER", "ACHIEVEMENT", "HEDONISM",  
          "STIMULATION", "SELF", "UNIVERSALISM", 
          "BENEVOLENCE", "TRADITION",  
          "CONFORMITY", "SECURITY")

responses_dt <- responses_dt %>%
  arrange(as.numeric(item_ID))

item_ids   <- responses_dt %>% select(item_ID) %>% unique()
item_ids$item_number <- seq(1:nrow(item_ids))

responses_dt <- merge(responses_dt, item_ids, by = "item_ID")
responses_dt <- responses_dt %>% arrange(as.numeric(item_ID)) %>% select(item_ID, item_number, everything())

rm(columns)