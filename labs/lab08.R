# Title: "County Level Cancer Incidence Rates"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

##############################################################################
# 01. Today, we will be working with the cancer incidence data:

cancer <- read_csv("https://statsmaths.github.io/stat_data/cancer_inc_data.csv")

#  name       - the name of the county, parish, or census area
#  state      - two letter abbreviation of the state
#  breast     - incidence rate per 100,000 women over 18 years of age
#  colorectal - incidence rate per 100,000 adults over 18 years of age
#  prostate   - incidence rate per 100,000 men over 18 years of age
#  lung       - incidence rate per 100,000 men over 18 years of age
#  melanoma   - incidence rate per 100,000 men over 18 years of age
#  poverty    - percentage of households below the poverty line
#  income     - median household income
#  region     - the state's region of the country from 9 possible categories
#  lat        - decimal latitude of the county centroid
#  lon        - decimal longitude of the county centroid

##############################################################################
# 02. Draw a plot showing the relationship between income (x-axis) and breast
# cancer. Add a regression line.


##############################################################################
# 03. Fit a regression model predicting breast cancer as a function of income.


# Is there a statistically significant relationship between the two at the
# 0.05 level?
#
# Answer:

##############################################################################
# 04. Now, add poverty into the regression model.


# Are the poverty and income variable significant in this new model?
#
# Answer:

##############################################################################
# 05. Re-create the plot and two models above for colorectal cancer.



# How do the results differ from the breast cancer incidence rates?
#
# Answer:

##############################################################################
# 06. Re-create the plot and two models above for lung cancer.



# How do the results differ from the other two incidence rates?
#
# Answer:

##############################################################################
# 07. Summarize the cancer dataset at the state level and plot the mean
# latitude variable (x-axis) versus the mean melanoma variable (y-axis).




# What appears to be the relationship between the two variables?

# Answer:

##############################################################################
# 08. You should see that the melanoma incidence increases with latitude. Does
# this seam intuitive or counter-intuitive?

# Answer:

##############################################################################
# 09. Fit the regression model implied by the prior plot. Is there a
# significant relationship at the 0.05 level?



# Answer:

##############################################################################
# 10. There are four outlying points in the prior plot. Create an interactive
# plot and add state to the tooltip.



# What state has the highest melanoma incidence? Which has the lowest melanoma
# incidence rate?

# Answer:

##############################################################################
# 11. (Critical Thinking) Based on this analysis, explain why the melanoma
# rate increases with latitude:

# Answer:


##############################################################################
# 12. Now, add a variable to the dataset indicating which counties have the
# the top 2% and bottom 2% levels of breast cancer. Plot these as a scatter
# plot using longitude and latitude with color denoting the top, bottom, and
# middle points.



##############################################################################
# 13. Where are the top and bottom cases? Are they in the same region on in
# very different regions of the country? Try to offer an explanation!

# Answer:










