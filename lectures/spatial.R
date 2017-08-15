library(tigris)
library(dplyr)
library(ggplot2)
library(readr)
library(leaflet)

state_list <- states() %>% list_states()



county_list <- list_counties(state_list[1])



tract_data <- tracts(state_list[1], county_list$fips[1:10])



url <- "http://data.insideairbnb.com/united-states/nc/asheville/2016-04-18/data/listings.csv.gz"

abnb <- read_csv(url)



library(tigris)


tarrant <- tracts("TX", "Tarrant", cb = TRUE)

leaflet(tract_data) %>%
 addTiles() %>%
 addPolygons(popup = ~NAME)
