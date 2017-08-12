# Title: "Graphics with qplot"
# Name:

# Starting with this lab, there will be a header of code
# this loads all of the libraries needed for the lab. Make sure
# you load them before doing any thing else, and if you have
# errors when loading address these *before* doing anything else.

# Load required functions and packages
library(ggplot2)

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
# far out into the righthand margin.

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
# interest? (Note: I'll ask you a lot of "thought" questions like this that
# require critical thinking rather than coding or numerical analysis):

# Answer:

##############################################################################
# 05. Another way to look at the data is by typing its name and running the
# dataset name verbatim. Run the command `arbuthnot` below:



# How many rows are printed? How many rows are there in total?

# Answer:

##############################################################################
# 06. You might also have noticed the row of three letter abbreviations under
# the column names. These describe the type of each variable:
#
#  * `int` stands for integers.
#  * `dbl` stands for doubles, or real numbers.
#  * `chr` stands for character vectors, or strings.
#
# The types of graphics and data manipulation we can do with a given
# variable is highly determined by the variable data types.
#
# Explain in words why the variables `boys` and `girls` are interpreted as
# integers.

# Answer:

##############################################################################
# 07. R has some powerful functions for making graphics. Our best friend this
# semester for making plots is the function `qplot`. At a minimum we must
# supply the arguments `x` and `data`. The `x` argument tells it the  variable
# name to put on the x-axis and the data argument tells it which data frame
# to grab the variables from. The style of plot will be choosen by default
# given the data types of the variable(s):

qplot(x = boys, data = arbuthnot)

# The result will show up in the lower right hand window. You can make the
# plot window larger by clicking on the "Zoom" button.

##############################################################################
# 08. I will often omit the "x =" part of the function, as it is understood
# that the first argument is equal to the x variable:

qplot(boys, data = arbuthnot)

# Draw a plot of the number of girls in the dataset. Try to understand what
# this type of plot is showing.


##############################################################################
# 09. If we give `qplot` two unnamed arguments, it will assume that the first
# is to be plotted on the x-axis and the second on the y-axis. It makes sense
# to see the change of the number of girls born over time, which we get with
# the following:

qplot(year, girls, data = arbuthnot)

# This plot is called a scatter plot, and is created by `qplot` whenever we
# give it two numeric variables. Is there an apparent trend in the number of
# girls baptized over the years? How would you describe it?

# Answer:

##############################################################################
# 10. Repeat the previous plot but using the number of boys born in each
# year.


# Does the pattern look similar?

# Answer:

##############################################################################
# 11. I mentioned that `qplot` will intelligently select the type of plot
# given the data types of the variables we give to it. Construct a plot using
# just the variable `head_of_state`:



# This is called a "barplot". You may need to zoom in to see it fully. Can you
# deduce what it is visualizing?

# Answer:

##############################################################################
# 12. Who was the longest serving head of state during the time period of this
# data set?

# Answer:

##############################################################################
# 13. How are the heads of state arranged by default? What ordering might make
# this easier to interpret?

# Answer:

##############################################################################
# 14. Now use `qplot` to draw a scatter plot using both `head_of_state` and
# `girls`. Try it both with `girls` on the x-axis and `head_of_state` on the
# y-axis, and the other way around. Which do you prefer?



# Answer:

##############################################################################
# 15. Under which heads of state was the number of girls born consistently
# low?

# Answer:

# Under which heads of state were the number of girls born consistently high?

# Answer:

##############################################################################
# 16. The function `qplot` has a many more bells and whistles than we have
# used so far. For example, we can use it to change the color of data
# points based on another variable in the dataset. Run the following:

qplot(year, boys, data = arbuthnot, color = head_of_state)

# Describe what happens.

# Answer:

##############################################################################
# 17. Modify the previous code to color the points based on the variable
# boy_to_girl_ratio.



# How does coloring by a continuous variable differ from the prior plot?

# Answer:

##############################################################################
# 18. We discussed how `qplot` picks a good default plot given the data types
# that we give it for the x and (optionally) y axes. Sometimes it is useful
# to add an additional plot type. To do this we literally add a function that
# beings with `geom_`. For example, to add a line plot we can run this:

qplot(year, boys, data = arbuthnot) + geom_line()

# Why does a line plot make sense in this example?

# Answer:

##############################################################################
# 19. Modify the previous plot command to color the lines by the head of
# state. Note: the order to the named inputs does not effect the output.



##############################################################################
# 20. What happened to the number of births during the reign of Charles I? How
# about Charles II?

# Answer:

##############################################################################
# 21. Why are there breaks in the line plot colored by the head of state?

# Answer:

##############################################################################
# 22. In some cases it may be useful to color all of the points the same color
# but to change it from the default black. Something like this might seem
# reasonable:

qplot(year, boys, data = arbuthnot, color = "blue")

# What happens?

# Answer:

##############################################################################
# 23. In order to color the points based on a fixed color name, we need to
# wrap the name in the function I(). Here is an example:

qplot(year, boys, data = arbuthnot, color = I("blue"))

# What happens now?

# Answer:


##############################################################################
# 24. Now, for practice, read in the following dataset with the same
# information for the present day:

present <- read_csv("https://statsmaths.github.io/stat_data/present.csv")

# What years are included in this data set?

# Answer:

##############################################################################
# 25. How do these counts compare to Arbuthnot's? Are they of a similar
# magnitude?

# Answer:

##############################################################################
# 26. Make a plot that displays the proportion of boys born over time.


# What do you see?

# Answer:

##############################################################################
# 27. In what year did we see the highest total number of births in the U.S.?
# Note: You'll need another plot.


# Answer:

##############################################################################
# 28. Reconstruct the line plot that is colored by the current head of state.


# Do you see any patterns related to particular presidencies? What benefit(s)
# does including this information add to the plot?

# Answer:


