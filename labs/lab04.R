# Title: "Fast Cars and Fancy Diamonds"
# Name:

# Load required functions and packages
library(tidyverse)
library(smodels)
library(forcats)
library(ggrepel)

theme_set(theme_minimal())

##############################################################################
# 01. We are going to look at two datasets today. The first contains
# information about a set of automobiles. To read it in we use the `read_csv`
# function as usual:

mpg <- read_csv("https://statsmaths.github.io/stat_data/mpg.csv")

# The variables in the dataset are:
#
#   manufacturer - name of the car's manufacturer
#   model        - name of the car model
#   displ        - the car's engine size, in litres
#   year         - year model year
#   cyl          - number of cylinders in the engine
#   trans        - transmition type
#   drv          - is the car 4 wheel drive ("4"), front wheel drive ("f") or
#                  rear wheel drive ("r")
#   cty          - number of miles you would expect to get for each gallon of
#                  fuel in a city environment
#   hwy          - number of miles you would expect to get for each gallon of
#                  fuel on the highway
#   fl           - fuel type
#   class        - type of car class

##############################################################################
# 02. Construct a scatter plot to describe the relationship between engine
# size and `cty`.



# Describe the relationship you see in the plot.

# Answer:

##############################################################################
# 03. Modify the previous plot to change the color of the points based on the
# class of car.



# Pick out 2 classes of cars. Does there placement on the plot seem as you
# would have expected?

# Answer:

##############################################################################
# 04. Now for something new. We've seen how to add a line plot to our chart;
# now we will add a smoothing curve to the plot. Plot `displ` (x-axis) against
# `cty` (y-axis) but change the geom to "smooth".



# Describe what this type of plot is doing.

# Answer:

##############################################################################
# 05. Another very useful geometry is call simply "text". Try running the
# following line of code:

qplot(displ, cty, data = mpg) + geom_text()

# What error message do you get?

# Answer:

# Add the input parameter label = model to fix the error message.


##############################################################################
# 06. Create an interactive plot from the prior graphic. What model has the
# highest city fuel efficiency? Which one has the largest engine? Why are
# their duplicate model names in the dataset?

# Answer:

##############################################################################
# 09. The function `paste` takes two or more variables and combines them as
# strings into one. Run, for example, the following:

qplot(displ, cty, data = mpg, label = paste(model, year)) + geom_text()

# Notice that `year` gets seamlessly translated into a character variable
# and that both are literally "pasted" together in the output.

##############################################################################
# 10. Create a new interactive plot based on the prior question. Be more
# specific about the car with the highest city fuel efficiency. Be more
# specific about the car with the largest engine.

# Answers:

##############################################################################
# 11. Let's apply these techniques with a little less hand-holding to a new
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
# 12. Draw a scatter plot with `carat` on the x-axis and `price` on the
# y-axis.



# Describe the pattern.

# Answer:

##############################################################################
# 13. Add the "smooth" geometry to the plot.



##############################################################################
# 14. Draw a scatterplot of carat (x-axis) against price (y-axis) the color
# of based on the variable `x`.



# Describe the relationship between `x` and the other two variables in the
# plot.

# Answer:

##############################################################################
# 15. Use `qplot` to draw a barplot of the clarity types.



# Which clarity type has the largest number of diamonds in the data set? Why
# do you think this is given the clarity chart shown in question 13?

# Answer:

# Which clarity type has the smallest number of diamonds in the data set? Why
# do you think this is given the clarity chart shown in question 13?

# Answer:

##############################################################################
# 16. Draw a plot with `carat` on the x-axis and `price` on the
# y-axis use the `text` geom with labels from the clarity variable.



# What clarity types does the most expensive diamond have? Does this surprise
# you at all?

# Answer:

# What clarity type does the largest diamond have? Does this surprise you at
# all?

# Answer:





