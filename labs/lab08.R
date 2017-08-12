# Title: "Simple Regression"
# Name:

# Load required functions and packages
library(dplyr)
library(readr)
library(ggplot2)
library(smodels)
library(forcats)
library(ggrepel)

theme_set(theme_minimal())

##############################################################################
# 01. To start today, let's look at an historically important dataset of
# pea sizes:

peas <- read_csv("https://statsmaths.github.io/stat_data/galton_peas.csv")

# These data were produced by Sir Francis Galton for his seminal 1894 text
# *Natural Inheritance*.^[Galton, F. (1894), *Natural Inheritance* (5th ed.),
# New York: Macmillan and Company.] It shows the sizes of daughter peas against
# the sizes of mother peas. Galton's experiment with peas is generally considered
# the classical first application of linear regression.

##############################################################################
# 05. Produce a scatter plot between the size of a parent pea and the size of
# the child pea.

# Do you see anything odd about the plot?

# Answer:

# Try using geom="jitter" instead of the default in `plot`.



##############################################################################
# 06. Use both the mean and median to compare the parent and child pea sizes.


# Do the average sizes seem very different?

# Answer:

##############################################################################
# 07. Use standard deviations to compare the variation of the parent and
# children peas.



##############################################################################
# 08. The parent heights are discrete values, so group the dataset by the
# parent heights and summarize the means of the children's height. Make a
# scatter plot of this summarized data.


# What pattern do you see?

# Answer:

##############################################################################
# 09. Measure the correlation between the parent and child values.

# Does the sign and magnitude seem reasonable or surprising?

# Answer:

##############################################################################
# 10. Fit a linear regression with parent as the predictor and child as the
# response.


# Why would we not fit the model the other way around?

# Answer:

##############################################################################
# 11. Using the model, how large do you expect the child of a parent of size
# 17 to be on average?

# Answer:

##############################################################################
# 12. Again, group the dataset by the size of the parent peas. Now, calculate
# the standard deviation of the children peas for each parent. What pattern
# emerges? Does this seem intuitively correct? This phenomenon will be the
# topic of a future lab.

# Answer:


##############################################################################
# 13. Now, let's look at a dataset measuring the body fat content of 251 adult
# men and some related demographic measurements:

health <- read_csv("https://statsmaths.github.io/stat_data/health.csv")

# The four variables available are:

#      bodyfat  - percentage of body fat, by weight
#      age      - age in years
#      weight   - weight in kilograms
#      height   - height in meters

##############################################################################
# 14. Plot a histogram of the body fat variable.

# What appears to be a typical range of body fat values?

# Answer:

##############################################################################
# 15. What is the mean percentage of body fat for subjects in the study?



##############################################################################
# 16. What is the standard deviation of body fat for subjects in the study?



##############################################################################
# 17. Plot weight on the x-axis and body fat on the y-axis. Add a linear
# regression line to the plot.



##############################################################################
# 18. Based on looking at the plot, what does the regression line
# approximately predict the average body fat will be for someone weighing
# 100kg?

# Answer:

##############################################################################
# 19. Fit a model predicting body fat as a function of weight using the
# `lm_basic` function. Now, using the coefficients of the model directly,
# predict the average body fat will be for someone weighting 100kg.



# Was your reading off of the plot accurate? (This is not a trick question;
# hopefully the answer is yes!)

# Answer:


##############################################################################
# 20. Now, fit a regression model that uses height to predict body fat.

# How much variation does this model explain relative to the one that uses
# weight? Does the result make sense or seem surprising to you?

# Answer:

##############################################################################
# 21. Body mass index (bmi) is defined as:

# BWM = weight / (height)^2

# Where weight is in kilograms and height is in meters. Add a variable `bmi`
# to the health dataset.



##############################################################################
# 22. Finally, fit a model that uses bmi to predict body fat and calculate the
# r-squared value.



# How much variation does this model explain compared to the weight and
# height? Does the result make sense or seem surprising to you?

# Answer:

