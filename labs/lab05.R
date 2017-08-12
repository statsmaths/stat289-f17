# Title: "Numerical Summaries"
# Name:

# Load required functions and packages
library(tidyverse)
library(smodels)
library(forcats)
library(ggrepel)

theme_set(theme_minimal())

##############################################################################
# 01. Today we will read in a larger version of the `diamonds` dataset that
# we saw in the previous lab:

diamonds <- read_csv("https://statsmaths.github.io/stat_data/diamonds.csv")

# As before, the variable names are:
#
#   price   - price in US dollars (\$326-\$18,823)
#   carat   - weight of the diamond (0.2-5.01)
#   cut     - quality of the cut (Fair, Good, Very Good, Premium, Ideal)
#   color   - diamond colour, from J (worst) to D (best)
#   clarity - a measurement of how clear the diamond is (I1 (worst),
#             SI1, SI2, VS1, VS2, VVS1, VVS2, IF (best))
#   x       - length in mm (0-10.74)
#   y       - width in mm (0-58.9)
#   z       - depth in mm (0-31.8)
#   depth   - total depth percentage = z / mean(x, y) = 2 * z / (x + y)
#   table   - width of top of diamond relative to widest point

##############################################################################
# 02. We can pick out a particular variable from a data frame using the `$`
# operator. So, for example, the weight of all the diamonds can be accessed
# with diamonds$carat. Try printing out all of the prices from the diamonds
# dataset:



##############################################################################
# 03. There are over 50k diamonds; looking at all of these prices is fairly
# overwhelming. Use the function `mean` to summarize these prices:



# Using the functions `sum` and `length`, we can verify that this is the same
# as adding all of the values and dividing by the number of values:



##############################################################################
# 04. What drawbacks are there to using the mean to measure the "typical"
# price of a diamond in our dataset?

# Answer:

##############################################################################
# 05. The function `percentiles` allows us to calculate the percentiles of any
# set of data. For example, running the following:

percentiles(diamonds$price)

# Shows that about 1/2 of the prices are less than 2401 and about 1/2 are
# greater than 2401. I use the word "about" here due to subtitles regarding
# ties and repeated values; for all practical purposes this is generally not
# important. Note: The 50% percentile has a special name, the "median", and
# a special function:

median(diamonds$price)

##############################################################################
# 06. Using the same output, what are the the 10, 90, and 99th percentiles of
# the price dataset?

# Answer:

# Describe the meaning of the 90th percentile in words.

# Answer:

##############################################################################
# 07. Often we do not want all of the percentiles. The function `deciles`
# computes only the percentiles 0, 10, 20, ..., 90, 100:


# What are other names for the 0th and 100th percentiles?

# Answer:

##############################################################################
# 08. Finally, use the function `ventile`.


# How many bins does this divide the dataset into?

# Answer:

##############################################################################
# 09. Now, draw a histogram of the price variable.


# What are the relative benefits and drawbacks of the graphical approach
# compared to using the percentiles / deciles / ventiles functions to describe
# the distribution.

# Answer:

##############################################################################
# 10. The statistician John Tukey advocated for describing the distribution
# of numeric variables using what he called the "five-number summary". This
# summary is simply the 0th, 25th, 50th, 75th, and 100th percentiles.
# Calculate the five number summary for the variable `carat`, the weight of
# the diamond, using one call to the `quartiles` function:


# This summary gives use the range, the middle value, and some notion of
# how spread out the data are.

##############################################################################
# 11. The "interquartile range" (IQR) is defined as the difference between the
# 75th percentile and the 25th percentile. It gives a one number description
# of how spread out the data are. Calculate the five number summary as in the
# prior question, but save the results to an object called `temp`:



# To grab the first element of temp, we write temp[1]. Now, write the code
# to calculate the IQR from `temp`:

temp[4] - temp[2]

# Note that the name that R gives by default to the result ("75%"), is
# meaningless to us.

##############################################################################
# 12. Why do we not usually not want to use the range, the difference between
# the 100th and 0th percentiles, to measure the spread of a variable?

# Answer:

##############################################################################
# 13. Calculate the IQR for the variables `x`, `y`, and `z`. You should be
# able to do this quickly by copying code from above:



# How similar or different are these three measurements? Describe them in
# words based on the context of the problem:

# Answer:

##############################################################################
# 14. Does it make sense to compare the IQRs in the previous question with the
# IQR for the variable `carat`? Why or why not?

# Answer:

##############################################################################
# 15. Now, print out the full five number summary for `x`, `y`, and `z`.


# Describe in words the similarities and differences between the length, width
# and depth of a cut diamond. Notice how the numerical summary makes this
# easier than it would be to do using a histogram.

# Answer:

##############################################################################
# 16. We can directly compute the variance and standard deviation with the
# functions `var` and `sd`. Compute the standard deviation of the variables
# `x`, `y`, and `z`.



# Do these tell a similar story about the spread of the three variables as
# we had from the IQR?

# Answer:


##############################################################################
# 17. Compute the IQR and standard deviation of the variable `price`. You may
# find it useful to copy the IQR code from the previous lab. Again, put your
# answers as comments following the code



# Note that these are both in dollars, but should not be directly compared as
# they are measuring spread in two different ways.

##############################################################################
# 18. (Robustness) Change the first price in the dataset `diamonds` to 1
# million dollars (recall the `<-` for setting values). Recompute the IQR and
# standard deviation of price on this new dataset.



# How much does each value change with the modification of one data point?

# Answer:

# In what way is the IQR more a more useful measurement? In what way is the
# standard deviation a more useful measurement?

# Answer:




