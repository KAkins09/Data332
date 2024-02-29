library(readxl)
library(dplyr)
library(tidyverse)
library(tidyr)
library(ggplot2)

rm(list = ls())


setwd('~/Data332_Rstudio')

df_truck <-read_excel('NP_EX_1-2.xlsx', sheet = 2, skip = 3, .name_repair ='universal')

# to select columns 
df<- df_truck [, c(4:15)]
#  to deselect columns
df<- subset (df, select = -c(...10))
#getting diffrence in days within a column
date_min <-min(df$Date)
date_max <-max(df$Date)

number_of_days_on_the_road<- date_max - date_min
print(number_of_days_on_the_road)

days<- difftime(max(df$date), min(df$Date))
print(days)

number_of_days_recorded <- nrow(df)

total_hours <- sum(df$Hours)

avg_hrs_per_day_rec <- (total_hours/number_of_days_recorded)
print(avg_hrs_per_day_rec)

df$fuel_cost <- df$Gallons *df$Price.per.Gallon

total_cost <- sum(df$Tolls)+ sum(df$Misc) + sum(df$fuel_cost)

print(total_cost)


print (total_cost)

df[c('warehouse','starting_city_state')] <- str_split_fixed(df$Starting.Location, ',',2)

view(df)

total_gallons_used <- sum(df$Gallons)

print(total_gallons_used)

miles_traveled <- sum(df$Odometer.Ending) - sum(df$Odometer.Beginning)
print(miles_traveled)


 miles_per_gallon <- miles_traveled /total_gallons_used
print (miles_per_gallon)


      cost_per_mile<- total_cost/miles_traveled
      
      
df$starting_city_state <- gsub(',', "", df$starting_city_state)


df_starting_pivot <- df %>%
  group_by(starting_city_state) %>%
  summarize(count = n(),
            mean_size_hours = mean(Hours, na.rm = TRUE),
            sd_hours = sd(Hours, na.rm = TRUE),
            total_hours = sum(Hours, na.rm = TRUE),
            total_gallons = sum(Gallons, na.rm = TRUE)
  )


ggplot(df_starting_pivot, aes(x = starting_city_state, y = count)) +
  geom_col() +
  theme(axis.text = element_text(angle = 45, vjust = .5, hjust = 1))




df[c('deli_warehouse','ending_city_state')] <- str_split_fixed(df$Delivery.Location, ',',2)
  
df$ending_city_state <- str_trim(df$ending_city_state, side = c('left'))

df$ending_city_state <- gsub(',', "", df$ending_city_state)
  
df_ending_pivot <- df %>%
  group_by(ending_city_state) %>%
  summarize(count = n(),
            mean_size_hours = mean(Hours, na.rm = TRUE),
            sd_hours = sd(Hours, na.rm = TRUE),
            total_hours = sum(Hours, na.rm = TRUE),
            total_gallons = sum(Gallons, na.rm = TRUE))

            
            ggplot(df_ending_pivot, aes(x = ending_city_state, y = count)) +
              geom_col() +
              theme(axis.text = element_text(angle = 45, vjust = .5, hjust = 1))
            
            
            

# df[c('col1', 'col2'')] <- str_split_fixed(df$city_state, ' ',2')
  
  
  
