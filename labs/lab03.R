# Title: "Graphics with Baptism Records"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)

theme_set(theme_minimal())

##############################################################################
# 01. The first step in today's lab is to read in the Arbuthnot dataset, an
# historically important set of records from late 17th century baptism
# records. To do this, run the following line of code:

arbuthnot <- read_csv("https://statsmaths.github.io/stat_data/arbuthnot.csv")

# Here we've used the function `read_csv` to read a file from my website. We
# will later in the semester see how to read in data that we have manually
# constructed.

##############################################################################
# 02. Click on the data in the top right hand pane. This will open an Excel
# like view of the dataset. Describe what the variable `head_of_state` most
# likely means:

# (Your answer should go after the "Answer tag", properly commented out with
# the '#' command at the front and manually wrapped so as to not extend too
# far out into the right hand margin.

# Answer:

##############################################################################
# 03. Looking at the data in the data viewer, what years does the dataset
# range over?

# Answer:

##############################################################################
# 04. The Arbuthnot data set refers to Dr. John Arbuthnot, an 18th century
# physician, writer, and mathematician. He gathered the baptism records for
# children born in London for every year from 1629 to 1710. He was interested
# in studying what we would now call the **secondary sex ratio**, the ratio of
# males to females in a population at birth. This would later be a major element
# of study of Ronald Fisher, one of the most well-known, early pioneering
# statisticians.
#
# Why would John Arbuthnot be using baptism records to study his question of
# interest?:

# Answer:

##############################################################################
# 05. Draw a scatter plot representing the number of boys baptised (y-axis)
# as a function of the year (x-axis).




##############################################################################
# 06. Modify the previous plot by coloring the data points as a function of
# who was the head of state.



##############################################################################
# 07. Modify the previous plot by changing the size relative to the total
# number of births that year.



##############################################################################
# 08. Modify the previous plot to now make the sizes all equal to 2.



##############################################################################
# 09. Add a line connecting the points in the prior plot, but do not color the
# line with the heads of state.




##############################################################################
# 10. Now, modify the line so that the colors *do* change with the head of
# state.


# You should see gaps in the lines. Why does this make sense?
#
# Answer:

##############################################################################
# 11. Construct a histogram of the number of the boy_to_girl_ratio variable.
# Change the default number of bins (30) to another number. Play around with
# the option until you find a plot that you prefer. Note: You may need to
# look at the geom_histogram help page.




##############################################################################
# 12. Build a plot of the number of girls born in each year (x-axis) and the
# number of boys born in each year (y-axis). However, instead of points, place
# a text label with `geom_text` showing the year.




##############################################################################
# 13. Add a smoothing curve to the prior plot using `geom_smooth`.




##############################################################################
# 14. Draw a scatter plot of boys per year (year on the x-axis) but color all
# of the points in "olivedrab".




##############################################################################
# 15. Now, add the girls birth data to the previous plot but color those
# points in salmon (Note: this might take some out of the box thinking, but
# requires only tools you've seen today).




##############################################################################
# 16. The prior plot's y-axis no longer makes sense (well, probably, depending
# on you solved the last question). Change it to something more accurate and
# remove the x-axis label entirely as it should be self-explanatory.



##############################################################################
# 17. Make two additional plots of the arbuthnot data using geometries that we
# have not used yet in class.








