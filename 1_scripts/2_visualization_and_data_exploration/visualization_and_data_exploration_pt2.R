# Visualization and data exploration pt.2

# pro tips: 
# 1) look at the help for each of the functions carefully
# 2) the internet is a great resource if you get stuck with coding 
# 3) knowing what you need/want to do is still the most important thing when using R!
# 4) you can find cheat_sheets for this lab in the "4_cheat_sheets" folder

# here you are going to put what you learned in pt.1 into practice

#### Importing data ####
# Use read_delim() from readr to load the "SilwoodWeather" dataset from the "2_data" folder in your project
# Save it to a new object called "SilwoodWeather". 
# We use read_delim() because we are dealing with a .txt file
help(read_delim)


#### Data exploration ####
# Use the head() function to see what the first 10 rows of the data look like 
# Was the data imported correctly? 
help(head)


##### Temperature data #####
# How does monthly maximum temperature (upper) change throughout the year? 
# Before we can plot this we need to prepare the data
# Let's have a look at the dataset and what types of variables we have
view(SilwoodWeather)

# We first need to transform month (our categorical variable) to be a factor so we can use it as a grouping variable 
# At the moment, R thinks it is just a number
# Use mutate() from dplyr to transform the "month" to a factor 
# (you can choose to save manipulated the dataset to a new object or pipe it directly into ggplot())
help(mutate)
help(factor)
help(ggplot)
help(geom_boxplot)

view(SilwoodWeather)


# Has there been a trend in yearly mean temperature between 1987 and 2005? 
# use group_by(), summarise(), and ggplot() with geom_line() to find out.
help(group_by)
help(summarise)
help(ggplot)
help(geom_line)


# Use the ggplot() function to generate a histogram of daily maximum temperatures (variable "upper") for the year 1987
# set the colour to orange, no main title (=empty), x label “daily maximum temperature”
help(filter)
help(ggplot)
help(geom_histogram)

SilwoodWeather %>%
  filter(yr == 1987) %>% 
  ggplot(aes(x = upper)) + 
  geom_histogram(color = "black", fill = "orange") + 
  labs() 


# Use the ggplot() function to generate a histogram of daily precipitation (variable "rain") for the year 2005
# set the colour to orange, no main title, x label “daily precipitation (mm)”



## Check the distribution of the data ##
# Use the ggplot() function to make a ‘quantile–quantile plot’ of July temperatures 
help(ggplot)
help(stat_qq)
help(stat_qq_line)


##### Precipitation #####
#Let's look at the precipitation values next
#Are they normally distributed?
# Histogram
help(ggplot)
help(geom_histogram)


#Q-Q plot
help(ggplot)
help(stat_qq)
help(stat_qq_line)

