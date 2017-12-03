# Title: "Fancy Diamonds"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)

theme_set(theme_minimal())

##############################################################################
# 01. Let's apply these techniques with a little less hand-holding to a new
# set of data. Read in the diamonds dataset, which gives metadata for a set
# of 1000 diamonds

diamonds <- read_csv("https://statsmaths.github.io/stat_data/diamonds_small.csv")

# The variable names are:
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
# 02. Draw a scatter plot with `carat` on the x-axis and `price` on the
# y-axis.



# Describe the pattern.

# Answer:

##############################################################################
# 03. Add the "smooth" geometry to the plot.



##############################################################################
# 04. Draw a scatter plot of carat (x-axis) against price (y-axis) with color
# based on the variable named `x` (the length of the diamond).



# Describe the relationship between `x` and the other two variables in the
# plot.

# Answer:

##############################################################################
# 05. Draw a barplot of the clarity types.



# Which clarity type has the largest number of diamonds in the data set?

# Answer:

# Which clarity type has the smallest number of diamonds in the data set?

# Answer:

##############################################################################
# 06. Draw a plot with `carat` on the x-axis and `price` on the
# y-axis use the `text` geom with labels from the clarity variable.



# What clarity types does the most expensive diamond have? Does this surprise
# you at all?

# Answer:

# What clarity type does the largest diamond have? Does this surprise you at
# all?

# Answer:


##############################################################################
# 07. Produce a scatter plot of carat against price (y-axis) faceted by the
# color of the diamond.




##############################################################################
# 08. Modify the previous plot so that the y-scales are different.



# Which plot do you prefer (this one or the prior one)?
#
# Answer:


##############################################################################
# 09. Draw a boxplot of diamond price as a function of color. Use a coordinate
# system layer to flip the plot to have vertical bars.

# What benefit is there of the vertical bars?
#
# Answer:



##############################################################################
# 10. Create another plot with `carat` on the x-axis and `price` on the
# y-axis. Manually add a line showing the average price of an engagement
# ring ($4,758) to the plot. Make the line some non-default color.



##############################################################################
# 11. Create another new plot with `carat` on the x-axis and `price` on the
# y-axis. Now, add an annotation showing the Hope diamond on the plot:
#
#     https://en.wikipedia.org/wiki/Hope_Diamond
#
# Use a point annotation with a red dot (the price is given as a range
# so just take the middle value).




##############################################################################
# 12. The last plot should have most of the data squished in one corner of the
# plot. Change the scale of the x and y axes to make the plot more readable.




##############################################################################
# 13. In the new plot you should see a clear linear pattern between the carats
# and price of the diamonds. Is the Hope diamond over-, under-, or just about
# what you would expect in price given this line?

# Answer:



##############################################################################
# 14. Construct two more plots using the techniques we have seen today that
# best captures the relationship between cut, clarity, and carat with the
# price of the diamonds.





##############################################################################
# 15. Create an interactive version of one of the plots in the last question.
# Add any useful variables to the tooltip that are not in the plot by default.




