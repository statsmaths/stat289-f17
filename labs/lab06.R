# Title: "NASA Weather Data"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. Today, we will again look the NASA storm dataset. Read it in with the
# following:

storms <- read_csv("https://statsmaths.github.io/stat_data/storms.csv")

# It may also be useful to have a dataset giving the borders of countries:

borders <- read_csv("https://statsmaths.github.io/stat_data/nasa_borders.csv")

##############################################################################
# 02. Construct a dataset giving the maximum wind speed and category of each
# storm in the dataset. Make sure to include the year in the dataset as well.



##############################################################################
# 03. Arrange the prior dataset to find the 5 storms that had the maximum
# wind speed.



##############################################################################
# 04. Calculate the number of category 4 storms for each year. Plot this
# count over time.




##############################################################################
# 05. Create a new variable in the storms dataset indicating whether this was
# the maximum wind speed reading for a given storm.





##############################################################################
# 06. Draw a plot showing the paths of each storm in 2015 (you can copy the
# code from the last lab if you would like). Color all of the paths black and
# keep the sizes uniform. Add a layer showing in red where each storm hit its
# maximum speed.




##############################################################################
# 07. Summarize the number of readings where each storm was a category 3 and
# a category 4 or 5 (in other words, the last one should include both 4 & 5).
# So, you should have a column counting `days_3`, `days_4_5`.
#
# Filter out rows that do not have any days with a category 4 rating. Draw a
# scatter plot showing the number of days at a category 3 (x-axis) and days
# at a category 4 or 5. Add a smoothing curve or line.




##############################################################################
# 08. Using the lead or lag function, create a new variable indicating whether
# a storm has sped up since its last reading. Recreate your 2015 line plot.
# Add a layer showing points where the storm slowed since its last reading
# (blue) and points where is sped up since the last reading (red). It will be
# easiest to do this with two different calls to `geom_point`.




##############################################################################
# 09. Figure out a clever way to add a single label to each storm's path from
# the 2015 storms giving its name.




##############################################################################
# 10. Re-run your code for the last question on a few other years. Do you
# need to make any adjustments to make the plot look nice? (If so, try to
# do it).




















