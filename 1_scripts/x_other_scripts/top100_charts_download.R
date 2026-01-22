library(jsonlite)
library(tidyverse)
library(lubridate)

# 1. Read the JSON file
# the dataset was downloaded from: https://raw.githubusercontent.com/mhollingshead/billboard-hot-100/main/all.json
# simplifyDataFrame = TRUE automatically turns arrays into a data frame
data <- fromJSON("2_data/all.json", flatten = TRUE)
data <- data %>% 
  unnest(data)
  
data_clean <- data %>% 
  group_by(song, artist) %>% 
  summarize(
    peak_position = min(peak_position, na.rm = TRUE), 
    weeks_on_chart = n(), 
    first_appeared = min(date)) %>% 
  ungroup() %>% 
  mutate(first_appeared = ymd(first_appeared),
         release_year = year(first_appeared))

# 2. Save as CSV
write.csv(data_clean, "2_data/top100_charts_data.csv", row.names = FALSE)
