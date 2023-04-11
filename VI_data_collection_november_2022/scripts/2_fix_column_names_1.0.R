# 2_fix_column_names_1.0
# author: Andrew M. Demetriou

library('data.table')   # read in .csv with fread
library('here')         # file logistics
library('dplyr')        # code logistics

source(here("VI_data_collection_november_2022", 'scripts', '1_data_format_1.0.R'))

# create dataframe from column names
column_names_df <- colnames(all_dt) |> as.data.frame()
colnames(column_names_df) <- "column"


# manual adjustments

column_names_df$column[370] <- "2655079-r"

column_names_df$column[2082] <- "49652179-f"

column_names_df$column[3803] <- "86177534-m_First Click"
column_names_df$column[3804] <- "86177534-m_Last Click"
column_names_df$column[3805] <- "86177534-m_Page Submit"
column_names_df$column[3806] <- "86177534-m_Click Count"

column_names_df$column[4271] <- "96457658-m_First Click"
column_names_df$column[4272] <- "96457658-m_Last Click"
column_names_df$column[4273] <- "96457658-m_Page Submit"
column_names_df$column[4274] <- "96457658-m_Click Count"

column_names_df$column[4419] <- "99092671-c"

column_names_df$column[5171] <- '124309479-m_First Click'
column_names_df$column[5172] <- '124309479-m_Last Click'
column_names_df$column[5173] <- '124309479-m_Page Submit'
column_names_df$column[5174] <- '124309479-m_Click Count'

column_names_df$column[5266] <- '132344958-r'

column_names_df$column[5321:5338] <- paste0("134307269-", 
                                           c("w", "f", 
                                             "1_1", "1_2", "1_3", "1_4", "1_5", 
                                             "1_6", "1_7", "1_8", "1_9", "1_10", 
                                             "m_First Click", "m_Last Click", 
                                             "m_Page Submit", "m_Click Count", 
                                             "c", "r"))

column_names_df$column[5447] <- "146653434-w"

column_names_df$column[5819:5822] <- c(
  "189822176-m_First Click", "189822176-m_Last Click",
  "189822176-m_Page Submit", "189822176-m_Click Count"
)

# assign column names 
colnames(all_dt) <- column_names_df$column
rm(column_names_df)
