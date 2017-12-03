# Title: "NASA Weather Data"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. Today, we are going to look at a NASA weather dataset. This particular
# one contains information about Atlantic storms. Read it in with the
# following:

storms <- read_csv("https://statsmaths.github.io/stat_data/storms.csv")

# It may also be useful to have a dataset giving the borders of countries:

borders <- read_csv("https://statsmaths.github.io/stat_data/nasa_borders.csv")

##############################################################################
# 02. Using the `filter` command, create a new dataset that contains only the
# 2013 storm "Barry".



# How many days did Barry last (you can just manually count them)?

# Answer:

##############################################################################
# 03. Using the arrange function, sort the dataset in descending order of wind
# speed. Which two storms had the largest wind speeds:




##############################################################################
# 04. Create a new variable in the dataset called doy (day of year) defined
# as the month plus the day divided by 32 minus 1.



##############################################################################
# 05. Create a scatter plot of wind speed as a function of doy. Use a pipe
# to do this.




##############################################################################
# 06. Create a histogram of storms per year between 2000 and 2010 using the
# filter function and a pipe.



##############################################################################
# 07. Create a dataset that consists only of tropical storms and construct a
# histogram of wind speeds from this data.




##############################################################################
# 08. Using the summarize command, compute the mean, median, and 25%
# percentile of wind speeds from all storms.




##############################################################################
# 09. Combine the prior function with a filter command to compute the mean,
# median, and 25% percentile of wind speeds from all category 5 storms.






##############################################################################
# 10. Construct a scatter plot with longitude on the x-axis and latitude on
# the y-axis of all storms. Use color to denote the category of the storm.




##############################################################################
# 11. Create a new variable `category_fct` that applies the function `factor`
# to the category variable of the dataset `storms`. Use the `mutate` function
# to do this.




##############################################################################
# 11. Construct a scatter plot with longitude on the x-axis and latitude on
# the y-axis of all storms. Use color to denote the category of the storm,
# but now use the `category_fct` variable.





##############################################################################
# 12. Using filter and pipes, construct a path plot with longitude and
# latitude of all storms from 2015. Color the lines based on the name of the
# storm.




##############################################################################
# 13. Add a `geom_path` layer to the prior plot that uses the borders data
# and adds the aesthetic `group = group` (this stops it from connecting parts
# of the map that are not connected).





##############################################################################
# 14. Repeat the prior plot but now: (1) only include latitude less than
# 40, (2) longitude less than -30, and (3) add `coord_map(ylim = c(0, 40))`
# to the plot.




##############################################################################
# 15. Add points to the prior map where the size of the point is
# determined by the category of storm. Make sure the color of the points
# matches that of the storm name as well.






##############################################################################
# 16. Modify the prior plot so that we have all years from 2010 to
# 2015, the color is no longer given by the storm name (set it to "red" to
# distinguish it from the borders), and use facets to facet by year. Note
# that you will have to use the `group` aesthetic to get this to look right.



