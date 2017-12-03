# Title: "Five Thirty Eight Articles & Chicago Crime Data"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. For the first half of the class, There is nothing that you need to do
# explicitly with R today. Everyone is going to be assigned to one of the
# following articles. Open your article and read it straight through.

# Article 1:

# https://fivethirtyeight.com/features/the-minimum-wage-movement-is-leaving-tipped-workers-behind/

# Article 2:

# https://fivethirtyeight.com/features/emma-stone-could-lock-natalie-portman-out-of-the-oscars-race/

# Article 3 (JUST READ PART 1):

# https://fivethirtyeight.com/features/what-went-wrong-in-flint-water-crisis-michigan/

# Article 4:

# http://fivethirtyeight.com/features/how-trumps-supreme-court-could-overturn-roe-v-wade-without-overturning-it/

# Article 5:

# http://fivethirtyeight.com/features/tom-brady-doesnt-need-gronk-or-moss-or-welker-to-win/

# Article 6:

# http://fivethirtyeight.com/features/under-a-new-system-clinton-could-have-won-the-popular-vote-by-5-points-and-still-lost/

##############################################################################
# 02. Answer the following questions based on your article. Make sure to
# properly word-wrap your answers. You are *more than welcome* to copy and
# paste quotes from the article to answer the questions if that helps; I'll
# just assume anything in quotations was pulled from the website.

# (A) Which article did you read?

# Answer:

# (B) What, if anything, is the thesis statement of the article? If there is
# not a clear thesis statement explain why there may not be. Note that the
# thesis may be in the form of an hypothesis (a question) or only mentioned
# in full at the end.

# Answer:

# (C) Does the article rely on inductive arguments, deductive arguments, or
# a combination of both? Explain your answer.

# Answer:

# (D) How many graphics and tables are included in the article?

# Answer (graphics):

# Answer (tables):

# (E) How is the graphic used in constructing an argument in the article?
# Are a subset of data points mentioned explicitly in the prose? Where in
# the article does the graphic come?

# Answer:

# (F) Do the graphics display model outputs, "raw" data, or both? For example
# if it contains a scatter plot and a best-fit / regression line it contains
# both "raw" data (scatter plot) and a model (regression line). Briefly
# explain.

# Answer

# (G) To what extent would you be able to reproduce the graphics given the
# data using what we have learned so far using R? (I don't mean the exact
# coloring and other aesthetics, just the nature of the plot). What, if
# any, elements do you not know how to create?

# Answer:

# (H) What seems to be the audience of the article? You don't need a long
# answer here.

# Answer:

##############################################################################
# 04. I recommend (strongly) at least reading a couple of the other articles.
# The more examples you see of good data analysis reports the better!


##############################################################################
# 05. We now, in preparation for next class, look at a dataset of crimes. Each
# row of the data refers to a single reported crime in the City of Chicago:

crimes <- read_csv("https://statsmaths.github.io/stat_data/chi_crimes_2016.csv")

# The available variable are:
#
#   area_number    - the community area code of the crime; a number from 1-77
#   arrest_flag    - whether the crime resulted in an arrest; 0 is false and
#                    1 is true
#   domestic_flag  - whether the crime is classified as a domestic offense; 0
#                    is false and 1 is true
#   night_flag     - did the crime occur at night (9pm - 3am); 0 is false and
#                    1 is true
#   burglary       - was the crime classified as a burglary? 0 is false and 1
#                    is true
#   theft          - was the crime classified as a theft? 0 is false and 1 is
#                    true
#   battery        - was the crime classified as a battery? 0 is false and 1
#                    is true
#   damage         - was the crime classified as a damage? 0 is false and 1
#                    is true
#   assault        - was the crime classified as an assault? 0 is false and 1
#                    is true
#   deception      - was the crime classified as criminal deception? 0 is false
#                    and 1 is true
#   robbery        - was the crime classified as a robbery? 0 is false and 1
#                    is true
#   narcotics      - was the crime classified as a narcotics violation? 0 is
#                    false and 1 is true

##############################################################################
# 06. We also have metadata about each community area within Chicago as well.
# We will see how to use these shortly.

ca <- read_csv("https://statsmaths.github.io/stat_data/chicago_meta.csv")

#   area_number        - the community area code; a number from 1 to 77
#   area_name          - popular name of the community area
#   median_age         - the median age of all residents in the community area
#   num_households     - total number of households
#   family_households  - percentage of households classified as a `family'
#                        (domestic partners, married couples, and one or more
#                        parents with children)
#   family_w_kids      - percentage of households with children under the age
#                        of 18
#   owner_ratio        - ratio of households that own or mortgage their
#                        primary residence
#   mean_travel_time   - average commute time
#   percent_walk       - percentage of commuters who walk to work (0-100)
#   median_income      - median household income
#   perc_20_units      - percentage of residential buildings with 20 or more
#                        units

##############################################################################
# 07. It is difficult to do much of anything directly with the raw data. We
# need to utilize the summarize function to get somewhere interesting.
# Before doing that on the whole dataset, let's make sure that we understand
# exactly what is going on by using the mean() and sum() functions directly.
# Take the mean of arrest_flag for the whole dataset:


# Describe what this means in words.

# Answer:

##############################################################################
# 08. Now, take the mean of the theft variable over the entire dataset:


# Describe what this means in words.

# Answer:


##############################################################################
# 09. Use the filter function to construct a dataset `temp` consisting only of
# those rows in `crimes` that come from area_number 23. This is the area
# named Humboldt Park.



##############################################################################
# 10. Take the mean of the variable arrests on the data `temp`.


# Is this smaller, larger, or about the same as the mean of the arrest flag
# over the entire dataset? Can we safely compare these measurements? If so
# describe the relationship in words.

# Answer:

##############################################################################
# 11. Take the mean of the variable `theft` on the data temp.


# Is this smaller, larger, or about the same as the mean of the theft flag
# over the entire dataset? Can we safely compare these measurments? If so
# describe the relationship in words.

# Answer:


##############################################################################
# 12. Now that we have an idea of what it means to take means and sums over
# this dataset, use `group_summarize` to summarize `crimes` at the community
# area level. Save the result as `crimes_ca`:


##############################################################################
# 13. We want to combine the datasets `crimes_ca` and `ca`. To do this we use
# the function `left_join`, as follows:

crimes_ca <- left_join(crimes_ca, ca)

# What variable is R using the match these datasets up?

# Answer:

# By default, R will use any commonly named variables to match the datasets
# up. If we need it, I will show you how to modify this behaviour later.

##############################################################################
# 14. Use the mutate function to construct a variable `theft_rate` equal to
# the number of thefts in each community area, divided by the number of
# households and multiplied by 1000.



##############################################################################
# 15. Draw a scatter plot with median income on the x-axis and theft rate on
# the y-axis.


# Describe the general pattern and any outliers.

# Answer: Generally the number of thefts per 1000 households decreases with
# higher incomes, though there is one outlier that has a very high theft rate
# but also one of the highest median incomes.




