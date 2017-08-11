library(tidyverse)
library(readr)
library(lubridate)

data <- readr::read_csv("GlobalTemperatures.csv")
since_1850 <- function(df) {
  df %>% mutate(Year = year(dt)) %>% select(Year,everything()) %>% filter(Year >= 1850)
}

land_average_temp_by_year <- function(df) {
  df %>% group_by(Year) %>% summarize(LandAverageTemp = mean(LandAverageTemperature,na.rm = TRUE),LandAverageTempUncertainty = mean(LandAverageTemperatureUncertainty,na.rm= TRUE))
}


land_and_ocean_average_temp_by_year <- function(df){
  df %>% group_by(Year) %>% summarize(LandAndOceanAverageTemp = mean(as.numeric(LandAndOceanAverageTemperature),na.rm = TRUE),LandAndOceanAverageTempUncertainty = mean(as.numeric(LandAndOceanAverageTemperatureUncertainty),na.rm= TRUE))
}


landtemperature <- since_1850(data)
landtemperature <- land_average_temp_by_year(landtemperature)

landandoceantemperature <- since_1850(data)
landandoceantemperature <- land_and_ocean_average_temp_by_year(landandoceantemperature)
write.csv(landtemperature,'landtemperature.csv')
write.csv(landandoceantemperature,'landandoceantemperature.csv')
