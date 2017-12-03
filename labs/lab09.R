# Title: "16 Personality Factors"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. Today we will be looking at survey response data from the Sixteen
# Personality Factor Questionnaire:

pf <- read_csv("https://statsmaths.github.io/stat_data/cattell_16pf.csv")

# With the following fields
#
#    age                  - respondent's age in years
#    gender               - respondent's self-selected gender
#    country              - two letter IATA code for the respondent's IP
#    elapsed              - time taken to complete quiz in seconds
#    warmth               - personality score from 1-20
#    reasoning            - personality score from 1-20
#    emotional_stability  - personality score from 1-20
#    dominance            - personality score from 1-20
#    liveliness           - personality score from 1-20
#    rule_consciousness   - personality score from 1-20
#    social_boldness      - personality score from 1-20
#    sensitivity          - personality score from 1-20
#    vigilance            - personality score from 1-20
#    abstractedness       - personality score from 1-20
#    privateness          - personality score from 1-20
#    apprehension         - personality score from 1-20
#    openness_to_change   - personality score from 1-20
#    self_reliance        - personality score from 1-20
#    perfectionism        - personality score from 1-20
#    tension              - personality score from 1-20
#    baseline             - average score across all 16 personality traits

##############################################################################
# 02. As an example of p-hacking, we are going to "show" three things at the
# significance level 0.005:
#
#     A. there is no evidence that men are more self-reliant than women
#     B. there is strong statistical evidence that men are more self-reliant
#          than women
#     C. there is strong statistical evidence that men are less self-reliant
#          than women
#
# To start, fit a univariate model predicting the `self_reliance` variable as
# a function of gender:



# Which hypothesis above does this particular regression support?
#
# Answer:

##############################################################################
# 03. Now, add the variable baseline into the model as a predictor:



# Which hypothesis above does this particular regression support?
#
# Answer:

##############################################################################
# 04. Fit a model of self reliance on gender, age, and the baseline.



# Which hypothesis above does this particular regression support at the 0.005
# level?
#
# Answer:

##############################################################################
# 05. Now, construct a variable `female` that is equal to 1 if a row is from
# a female and is 0 otherwise.



##############################################################################
# 06. Choose four personality types above that you think will differ the most
# between genders. Fit a linear regression model predicting the `female`
# variable as a function of these.



# Which variables are significant at the 0.005 level?
#
# Answer:

##############################################################################
# 07. Use the model from the previous question to fit predicted values to the
# data. Save these as a variable `pred_lm`.



##############################################################################
# 08. Using the same variables, fit a binomial model to the data using the
# `glm` function.



# Which variables are significant at the 0.005 level?
#
# Answer:

##############################################################################
# 09. Use the model from the previous question to fit predicted values to the
# data. Make sure to specify that you want to predict the response variable!
# Save these as a variable `pred_glm`.



##############################################################################
# 10. Finally, plot the `pred_glm` and `pred_lm` on a scatter plot. Add a
# line with slope 1 and intercept 0.




# How similar are these? Where do they differ the most?
#
# Answer:




















