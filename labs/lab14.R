# Title: ""
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. For today's lab you should construct the following files from our work
# last class: movies.csv; actors.csv; links.csv; We can read them in with the
# following:

movies <- read_csv("movies.csv")
actors <- read_csv("actors.csv")
links <- read_csv("links.csv")

##############################################################################
# 02. Add the actor metadata columns to the dataset "links" using the function
# `left_join`. Save this as a new dataset (i.e., don't overwrite "links")



##############################################################################
# 03. Use a series of dplyr verbs to add a column to the `movies` table called
# `num_us_actors` that counts the number of actors that are born in the US.
# Make sure you sketch out in your head or in this file the steps you need
# before writing some code! Here you may overwrite the original movies dataset
# if you wish.




##############################################################################
# 04. Use a series of dplyr verbs to add a column to the actors table counting
# how many movies in your dataset each actor starred in. Once again sure you
# sketch out the steps before writing some code! Again, you may overwrite the
# actors dataset if that is easier.






