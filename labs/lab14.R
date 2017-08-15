# Title: "Sixteen Personality Factors"
# Name:

# Load required functions and packages
library(tidyverse)
library(smodels)
library(forcats)
library(ggrepel)

theme_set(theme_minimal())

##############################################################################
# 01. We are going to be looking at survey response data from the Sixteen
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

# To start with, select a particular trait that you will use for the first
# bank of questions.

##############################################################################
# 02. Produce a bar plot of the personality scores for your trait. Describe
# the distribution. Why does a bar plot work here even though the variable is
# numeric?


# Answer:

##############################################################################
# 03. Produce a confidence interval for the mean of your trait.


# Answer:

##############################################################################
# 04. Now, produce a dataset `temp` that consists only of responses from the
# country of Hungary. The 2-letter country code for Hungary is "HU".


##############################################################################
# 05. Produce a confidence interval for your trait on the dataset `temp`.



# Answer:

# What do you notice about this confidence interval compared to the original
# one? Can you explain why this is the case?

# Answer:

##############################################################################
# 06. Find a 95% confidence interval for the difference between the average
# male and female value for your personality trait.


# Answer:

# Is there a statistically significant difference between men and women's
# average score? If so, what direction is this difference? Does this challenge
# or confirm traditional gender stereotypes (note: not all personality traits
# have one)?

# Answer:

##############################################################################
# 07. Construct a dataset `temp` that only has ages from 30-49. Hint: use the
# filter function twice.


##############################################################################
# 08. On the dataset `temp` construct a variable `fourties` if age is greater
# than or equal to 40.


##############################################################################
# 09. Fit a regression on `temp` with your personality trait as a response to
# test for the difference between its mean for people in their 30s versus
# people in their 40s. Compute a confidence interval for this difference.


# Answer:

# Is there a statistically significant difference between 30s and 40s average
# scores? If so, what direction is this difference? Does this challenge or
# confirm traditional age stereotypes (note: not all personality traits
# have one)?

# Answer:

##############################################################################
# 10. Draw a bar plot of the variable `country` over the whole dataset. Take
# note of the number of countries with a very small number of responses.


##############################################################################
# 11. Fitting a model with all of these countries is possible but not very
# useful. When we only have a few responses from some places it makes those
# few regions with a lot of data harding to identify and analyze. Fortunately
# there is a solution in the function `fct_lump`.
#
# fct_lump takes two arguments, the character variable followed by the number
# of total levels you would like to include. Everything else gets lumped (can
# you see where the name comes from?) into an "Other" category. Here we fit
# a model predicting the baseline level with the top 5 most common countries:

model <- lm_basic(baseline ~ fct_lump(country, 5), data = pf)
reg_table(model, 0.95)

# The baseline level in this case is AU (Austrailia). You can see the
# Anglophone bias in the dataset from the data from the top five counties.
# Fit this model, changing the baseline variable to your variable of interest.


##############################################################################
# 12. Using the previous model, which country (not including "Other") has the
# highest score for your trait? Which has the lowest?

# Answer:

##############################################################################
# 13. Fit a model that predicts sensitivity as a function of the baseline
# score.


# Is the slope statistically significantly different from 1? Why is this an
# interesting question in the context of the data?

# Answer:

##############################################################################
# 14. Fit a regression model that uses both gender and the baseline score to
# predict your trait.



# Describe the slope for the gender term in words:

# Answer:

##############################################################################
# 15. Add predictions from the previous model to `pf`.


# Plot the baseline score as a function of `model_pred`, coloring the points
# base on the gender variable.


# What do the predicted values look like?

# Answer:

##############################################################################
# 16. Instead of changing the intercept with gender, we can make them have
# different slopes instead. Run the following model, changing the train to
# your trait of interest:



# The result will have two different slope, one for each gender. Repeat the
# previous question (add model to `pf` and draw the plot colored by gender).


# Describe this plot.

# Answer:

##############################################################################
# 17. It also possible to have a model with different slopes and intercepts
# for each gender. In the absense of other covariates, this is equivalent to
# running each regression seperately on a subset of the men and then over a
# subset of the women. Run the following model, changing the train to
# your trait of interest:



# Repeat the previous question (add model to `pf` and draw the plot colored
# by gender).



# Describe this plot.

# Answer:

##############################################################################
# 18. Take each row in the previous regression table, other than the intercept
# and describe what it would mean if this variable were equal to zero.

# Answer:



##############################################################################
# 19. Use the `percentiles` function to detect the 3th and 97th percentiles for
# the amount of elapsed time taken to complete the quiz.


# Answer:

##############################################################################
# 20. We want to construct a new variable called speed that tells us whether
# someone was a fast test taking (less than the 3rd percentile), a slow test
# taker (greater than the 97th percentile), or a normal test taker. To do
# so, I'll use some code that we have not seen since the first week of class.
# If the 3rd percentile was 100s and the 97th was 1000s, it would look like
# this:

pf$speed <- "normal" # the default
pf$speed[pf$elapsed < 100] <- "fast"
pf$speed[pf$elapsed > 1000] <- "slow"

# Modify this code to use the cutoffs you found in the previous question.

pf$speed <- "normal" # the default
pf$speed[pf$elapsed < 369] <- "fast"
pf$speed[pf$elapsed > 4107.46] <- "slow"

##############################################################################
# 21. Fit a linear model predicting the prefectionism variable as a function
# of the speed variable.



# How does the perfectionism score differ between the three groups? Are both
# slopes significant?

# Answer:

##############################################################################
# 22. In the last question it should have appeared that the perfectionism
# score for the slow and normal groups were very similar. In the regression
# as given there is no way to test whether these two groups have a
# statistically significant difference because the slopes only relate to the
# baseline level (here, "fast").
#
# It is possible to change the baseline level of a categorical variable in
# R. To do so, use the function `fct_relevel`; its second argument gives the
# desired baseline level:



# Using this table, is there a statistically significant difference between
# normal and slow users in their perfectionism score?

##############################################################################
# 23. (Critical Thinking) Based on the result in the previous describe a
# plausible reason and a some people may finish quickly and a plausible reason
# some may take a long time. Hint: Converting the 97th percentile to hours
# may give you some ideas for the last part.

# Answer:

##############################################################################
# 24. Take your personality trait from last class and select the one trait
# that most closely contrasts with your trait and one that most closely
# matches your trait. Fit a linear regression model that predicts your trait
# as a function of both of these as well as the baseline variable.



##############################################################################
# 25. Interpret the significance and signs of the slopes in the previous model
# for the two traits that you selected. Do their signs match what you would
# have expected?

# Answer:

##############################################################################
# 26. Take the previous model and add the variables `speed`, `gender`, and
# `country`, the latter lumped into 5 categories.



# Does this change the slopes for your two traits a lot?

# Answer:

##############################################################################
# 27. Summarize the previous model (specifically the relationship between the
# three traits) in words.

# Answer:









