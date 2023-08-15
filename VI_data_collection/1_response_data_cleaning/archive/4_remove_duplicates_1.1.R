
library('here')
library('data.table')
library('dplyr')
library('stringr')

# load response data frame
all_dt <- readRDS(file = here("VI_data_collection", "_data", "survey_response_data", "all_dt.RDS"))

all_dt <- all_dt[participant_ID != "3d3cc7339134e971665b3b97916c470f"]