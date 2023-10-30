# title: "merge datasets"
# author: andrew demetriou

library('here')            # file logistics
library('data.table')      # data manipulation
library('tidyverse')       # data manipulation

# load dataset
load(file = here("VI_data_collection", "_data","intermediary_data", "machines_as_fixed_f_df.RDS"))

source(here("VI_data_collection", "_functions", "format_response_data_1.1.R"))

values <- c("POWER", "ACHIEVEMENT", "HEDONISM", 
            "STIMULATION", "SELF", "UNIVERSALISM", 
            "BENEVOLENCE", "TRADITION", 
            "CONFORMITY", "SECURITY")


responses_machines_as_fixed_df <- merge(responses_dt, machines_as_fixed_f_df, by='item_ID')

