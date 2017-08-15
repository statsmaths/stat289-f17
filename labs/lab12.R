# Title: "Inference for the Mean"
# Name:

# Load required functions and packages
library(tidyverse)
library(smodels)
library(forcats)
library(ggrepel)

theme_set(theme_minimal())

##############################################################################
# 01. We will start today by looking at a small dataset containing teacher
# salaries from 2009-2010 for 71 randomly choosen teachers employed by the
# St. Louis Public School in in Michigan.

teachers <- read_csv("https://statsmaths.github.io/stat_data/teachers_pay.csv")

# The available variables are:
#
# base       - Base annual salary, in dollars
# degree     - Highest educational degree attained: BA (Bachelor's) or
#              MA (Master's)
# years      - Number of years employeed

##############################################################################
# 02. Using the mean function, what is the average base pay of all teachers
# in the dataset?



##############################################################################
# 03. Fit a model for the mean of the base pay variable using lm_basic. Save
# the model as an object called "model":


##############################################################################
# 04. Using a call to `reg_table`, find the mean implied by the model:


# Does the mean agree with your answer to question 2?

# Answer:

##############################################################################
# 05. Add a 95% confidence interval to the regression table. What is the
# range of mean salaries implied by the confidence interval?



# Answer:

##############################################################################
# 06. We now will look at a dataset of reviews of burritos in southern
# California. This is a data set collected by a group of college friends who
# live in the greater San Diego area.

burrito <- read_csv("https://statsmaths.github.io/stat_data/burrito.csv")

# The available variables in the data are:
#
#   location        - the name of the restaurant
#   cost            - total cost for the burrito
#   yelp            - the average Yelp review score
#   google          - the average Google review score
#   chips_included  - equals 1 if chips are included with the burrito
#   hunger          - score from 1 to 5 on how much the burrito filled up
#                     the reviewer
#   tortilla        - rating from reviewer; 1 (terrible) to 5 (awesome)
#   temp            - rating from reviewer; 1 (terrible) to 5 (awesome)
#   meat            - rating from reviewer; 1 (terrible) to 5 (awesome)
#   fillings        - rating from reviewer; 1 (terrible) to 5 (awesome)
#   meat_filling    - rating from reviewer; 1 (terrible) to 5 (awesome)
#   uniformity      - rating from reviewer; 1 (terrible) to 5 (awesome)
#   salsa           - rating from reviewer; 1 (terrible) to 5 (awesome)
#   synergy         - rating from reviewer; 1 (terrible) to 5 (awesome)
#   wrap            - rating from reviewer; 1 (terrible) to 5 (awesome)
#   overall         - rating from reviewer; 1 (terrible) to 5 (awesome)
#   lat             - latitude (in degrees North) of the taco restaurant
#   lon             - longitude (in degrees East) of the taco restaurant

##############################################################################
# 07. Fit a linear regression predicting the average yelp score of locations
# in this dataset.



# The average Yelp score of all restaurants in this area is just 3.7; looking
# at the confidence interval from the model does it seem likely that burrito
# locations have a higher Yelp rating than locations in general, or is this
# just noise in the data?

# Answer:

##############################################################################
# 08. (Critical thinking) The regression model confidence interval requires
# that the data are sampling independently from the larger population. Why
# might this dataset not hold to this assumption?

# Answer:

##############################################################################
# 09. Now fit a linear regression that predicts the yelp score as a function
# of whether the burrito includes chips.



##############################################################################
# 10. Describe what the slope coefficient in the previous model really means
# in terms of the data:

# Answer:

##############################################################################
# 11. Is the slope coefficient statistically significant (compared to zero)?

# Answer:

# Describe this in terms of your answer to question 5.

# Answer:

##############################################################################
# 12. The word *synergy* can be defined as:
#
#   "the interaction or cooperation of two or more organizations, substances,
#    or other agents to produce a combined effect greater than the sum of
#    their separate effects."
#
# This is not something I would have thought of when considering tacos, but
# let's see how synergy effected the scores of both the reviewers as well as
# Google and Yelp users in general.
#
# First, use the mutate function to add a variable called high_synergy defined
# as whether the synergy score is greater than 3.5.



##############################################################################
# 13. Fit a regression predicting the Yelp score as a function of the
# variable `high_synergy`.


# Is there strong evidence that Yelp scores are higher for high synergy
# burrito restaurants?

# Answer:

##############################################################################
# 14. Now fit a regression predicting the overall score as a function of
# the variable high_synergy.


# Is there evidence that high synergy burrito locations have a higher overall
# score than low synergy burrito locations?

# Answer:

##############################################################################
# 15. Using the model from the previous question, what does the model predict
# will be the overall score of a location with low synergy?


# Answer:

# What does the model predict will be the overall score of a location with
# high synergy?

# Answer:

##############################################################################
# 16. The model from question 13 fits a different value for each unique value
# of the synergy score. The regression table for this model look like this:
#
# Call:
# lm_basic(formula = overall ~ factor(synergy), data = burrito)
#
# Residuals:
#      Min       1Q   Median       3Q      Max
# -1.05323 -0.25323  0.00417  0.31875  0.72222
#
# Coefficients:
#                  Estimate
# (Intercept)         2.500
# factor(synergy)2   -0.222
# factor(synergy)3    0.692
# factor(synergy)4    1.353
# factor(synergy)5    1.700
#
# Residual standard error: 0.4322 on 45 degrees of freedom
# Multiple R-squared:  0.6977,  Adjusted R-squared:  0.6708
# F-statistic: 25.96 on 4 and 45 DF,  p-value: 3.408e-11
#
# What is the meaning behind these variables? R has created a number of 0/1
# variables for us, called indicator variables. The variable called
# `factor(synergy)2` is equal to 1 if the synergy score is 2, and 0
# otherwise. Similarly, the variable `factor(synergy)4` is equal to 1 if
# the synergy score is equal to 4, and 0 otherwise.
#
# Using this, the intercept value represents the predicted overall score
# for a restaurant with a synergy score of 1. The other slopes gives the
# increase in the score for the respective synergy level. For example, a
# location with synergy score 5 will have a predicted score of the following,
# (I've done this out the long way to illustrate how it works):

2.500 + (-0.222) * 0 + (0.692) * 0 + (1.353) * 0 + (1.700) * 1 # 4.2

# What does the model predict the overall score for a restaurant with a
# synergy score of 3 will be?



# Answer:

##############################################################################
# 17. In the regression table I wrote above I did not include the confidence
# intervals. Add these in at the 0.95 level.


# You should find that the variable `factor(synergy)2` is not significant.
# Describe what this means in the context of the problem:

# Answer:

# You should find that the variable `factor(synergy)4` is not significant.
# Describe what this means in the context of the problem:

# Answer:









