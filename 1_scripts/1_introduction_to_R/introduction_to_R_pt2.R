# Introduction To R pt.2

# run this script using ctrl + enter (command + enter on mac)

# pro tips: 
# 1) look at the help for each of the functions carefully
# 2) the internet is a great resource if you get stuck with coding 
# 3) knowing what you need/want to do is still the most important thing when using R!
# 4) you can find cheat_sheets for this lab in the "4_cheat_sheets" folder

# here you are going to put what you learned in pt.1 into practice
# This is going to be an opportunity for you to learn tidyverse and work with data
# To continue we start by importing the tidyverse package collection
help(library)
library(tidyverse)

#### Importing data ####
# Load the "top100_charts" dataset from the "2_data" folder in your project
# Save it to a new object called "top100_charts"
# Since this dataset is a CSV file we are going to use the read_csv() from the readr package to do this
help(read.csv)
top100_charts <- read_csv("2_data/top100_charts.csv")


# Use the head() function to see what the first 10 rows of the data look like 
# Was the data imported correctly? 
help(head)

# This dataset contains the Billboard hot 100 data starting from 1958 till now (basically).
# Your job is to learn something new about your favorite classic artists and songs
# To do this you are going to manipulate this dataset in several different ways using functions from the dplyr package


#### Data exploration ####
# How many unique songs have been on the top 100 charts?
# Use distinct() from dplyr and nrow() to find this out
help(distinct)
help(nrow)
top100_charts %>% 
  distinct(song) %>% 
  nrow()

# How many unique artists have been on the top 100 charts?
# Use distinct() from dplyr and nrow() to find this out
help(distinct)
help(nrow)


# Which song 10 songs have spent most time on the top 100 charts? 
# Use max() to find out
help(max)


# How many one day flies have been on the charts over the years?
# Use filter() from dplyr to see the songs that have only been on the charts for 1 week
help(filter)


# Have your three been on the top 100 charts?
# use filter() from dplyr to find the songs of your three favorite artists in the charts
help(filter)


# Which song from of your favorite artists has spent most time on the charts?
# use max() to find out
help(max)


# Which songs that were released during the year in which you turned 14 were peaking at number 1 in the charts?
# use filter() from dplyr to find out
help(filter)


# Which artist has had the most songs on the chart?
# Use group_by() and summarize() from dplyr to get the numbers of songs each artist has on the list
help(group_by)
help(summarize)


# Which songs spent most time in the charts for each year during your favorite "classics" decade (i.e., 2000s, 90s, 80s etc.)? 
# use group_by(), summarize() and filter() from dplyr to find out
help(group_by)
help(summarize)
help(filter)



# If you are interested you can find the script 
# to download and clean the most recent version
# of the dataset you worked with in the 
# "1_scripts/x_other_scripts/top100_charts_download.R"




