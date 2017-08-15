# Title: "Introduction to R and RStudio"
# Name:

##############################################################################
# 1. R will evaluate any command and by default it will print the answer to
# the console in the lower lefthand pane of RStudio. Let's try some simple
# math. Run the following command by highlighting the row and hitting the Run
# button in the upper left hand corner.

1 + 1

# There's your result, 2. It's printed on the console right after your entry.

##############################################################################
# 2. Type the string "Hello there!" in the code below. (Don't forget the
# quotes!) Then highlight it and Run the code. It should just spit out the
# string verbatim back at you.



##############################################################################
# 3. Now try multiplying 6 times 7 (* is the multiplication operator). Again,
# write the code below, highlight, and click run.



##############################################################################
# 4. Some expressions return a "logical value": TRUE or FALSE. (Many
# programming languages refer to these as "boolean" values.) Let's try running
# an expression that gives us a logical value:

3 < 5

##############################################################################
# 5. And another logical value (note that you need a double-equals sign to
# check whether two values are equal - a single-equals sign won't work):

2 + 2 == 5

##############################################################################
# 6. As in other programming languages, you can store values into a variable
# to access it later. Type x <- 42 below and run it to store a value in x.
# You should notice the variable show up in the right hand corner of the
# RStudio screen.

x <- 42

##############################################################################
# 7. The object x can now be used in expressions in place of the original
# result. Try dividing x by 2 (/ is the division operator).



##############################################################################
# 8. You can re-assign any value to a variable at any time. Try assigning the
# string "Arr, matey!" to x.


##############################################################################
# 9. You can print the value of a variable at any time just by typing its name
# in the console. Try printing the current value of x.



##############################################################################
# 10. Now try assigning the TRUE logical value to x.



##############################################################################
# 11. In R, you call a function by typing its name, followed by one or more
# arguments to that function in parenthesis. Let's try using the sum function,
# to add up a few numbers. Enter:

sum(1, 4, 4)

##############################################################################
# 12. Some arguments have names. For example, to repeat a value 3 times, you
# would call the rep function and provide its times argument:

rep(1, times = 3)

##############################################################################
# 13. help(functionname) brings up help for the given function. Try displaying
# help for the sum function:

help(sum)

# (Don't worry about that optional na.rm argument)

##############################################################################
# 14. example(functionname) brings up examples of usage for the given
# function. Try displaying examples for the min function:

example(min)

##############################################################################
# 15. Now try bringing up help for the rep function:



# The name "vector" may sound intimidating, but a vector is simply a list of
# values. R relies on vectors for many of its operations. This includes basic
# plots - we'll have you drawing graphs very soon (and it's a lot easier than
# you might think)!

##############################################################################
# 16. A vector's values can be numbers, strings, logical values, or any other
# type, as long as they're all the same type. Try creating a vector of
# numbers,like this:

c(4, 7, 9)

# The c function (c is short for Combine) creates a new vector by combining
# a list of values.

##############################################################################
# 17. Now try creating a vector with strings:

c("a", "b", "c")

##############################################################################
# 18. Vectors cannot hold values with different modes (types). Try mixing
# modes and see what happens:

c(1, TRUE, "three")

# All the values were converted to a single mode (characters) so that the
# vector can hold them all.

##############################################################################
# 19. If you need a vector with a sequence of numbers you can create it with
# `start:end` notation. Let's make a vector with values from 5 through 9:

5:9

##############################################################################
# 20. A more versatile way to make sequences is to call the seq function.
# Let's do the same thing with seq:

seq(5, 9)

##############################################################################
# 21. seq also allows you to use increments other than 1. Try it with steps
# of 0.5:

seq(5, 9, 0.5)

##############################################################################
# 22. Now try making a vector with integers from 9 down to 5:



##############################################################################
# 23. We're going to create a vector with some strings in it for you, and
# store it in the sentence variable. You can retrieve an individual value
# within a vector by providing its numeric index in square brackets. Try
# getting the third value:

sentence <- c('walk', 'the', 'plank')
sentence[3]

##############################################################################
# 24. Many languages start array indices at 0, but R's vector indices start
# at 1. Write the code for accessing the first value of 'sentence':



##############################################################################
# 25. You can assign new values within an existing vector. Try changing the
# third word to "dog":



##############################################################################
# 26. If you add new values onto the end, the vector will grow to accommodate
# them. Let's add a fourth word:

sentence[4] <- "to"

##############################################################################
# 27. You can use a vector within the square brackets to access multiple
# values. Try getting the first and third words:

sentence[c(1, 3)]

##############################################################################
# 28. This means you can retrieve ranges of values. Try to access the second
# through fourth words:

sentence[2:4]

##############################################################################
# 29. You can also set ranges of values; just provide the values in a vector.
# Add words 5 through 7:

sentence[5:7] <- c("the", "park", ".")

##############################################################################
# 30. Now, try accessing the sixth word of the sentence vector:



##############################################################################
# 31. For this challenge, we'll make a 3-item vector for you, and store it in
# the ranks variable. You can assign names to a vector's elements by passing
# a second vector filled with names to the names assignment function, like
# this:

ranks <- 1:3
names(ranks) <- c("first", "second", "third")

# Assigning names for a vector can act as useful labels for the data. Below,
# you can see what our vector looks like now.

ranks

##############################################################################
# 32. You can also use the names to access the vector's values. Try getting
# the value for the "first" rank:

ranks["first"]

##############################################################################
# 33. Now set the current value for the "third" rank to a different value
# using the name rather than the position.



##############################################################################
# 34. In order to produce plots today, we need to load an "R Package". These
# are collections of functions that are not available by default in R. The
# plotting packages we need is loaded by calling this function:

library(ggplot2)
library(dplyr)

# If you get an error, make sure you have installed the package on your
# machine first!

##############################################################################
# 35. Now, if we construct a new variable "a", we can see a histogram of the
# data:

a <- c(1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 5, 6)
qplot(a)

##############################################################################
# 36. We can similarly draw a box plot for a character vector with the same
# command:

b <- c("a", "a", "a", "a", "a", "b", "c", "c", "c", "d", "d", "e", "e", "e", "e")
qplot(b)

##############################################################################
# 37. Finally, if we have two vectors of the same length, qplot will draw a
# scatter plot of them both.

a <- c(1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 5, 6)
b <- c(5, 6, 7, 9, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23)

qplot(a, b)

# We will learn a LOT more about plotting later today; I just want you
# to start getting comfortable with the ideas.


##############################################################################
# 38. Most arithmetic operations work just as well on vectors as they do on
# single values. We'll make another sample vector for you to work with, and
# store it in the a variable. If you add a scalar (a single value) to a
# vector, the scalar will be added to each value in the vector, returning a
# new vector with the results. Try adding 1 to each element in our vector:

a <- c(1, 2, 3)
a + 1

##############################################################################
# 39. The same is true of division, multiplication, or any other basic
# arithmetic. Try dividing our vector by 2:



##############################################################################
# 40. Now try multiplying our vector by 2:



##############################################################################
# 41. If you add two vectors, R will take each value from each vector and add
# them. We'll make a second vector for you to experiment with, and store it in
# the b variable. Try adding it to the a vector:

b <- c(4, 5, 6)
a + b

##############################################################################
# 42. Now try subtracting b from a:



##############################################################################
# 43. Finally, try multiplying a and b:



##############################################################################
# 44. You can also take two vectors and compare each item. See which values
# in the a vector are equal to those in a second vector:

a == c(1, 99, 3)

# Notice that R didn't test whether the whole vectors were equal; it checked
# each value in the a vector against the value at the same index in our new
# vector.

##############################################################################
# 45. Check if each value in the a vector is less than the corresponding value
# in another vector:

a < b

##############################################################################
# 46. Functions that normally work with scalars can operate on each element of
# a vector, too. Try getting the sine of each value in our vector:

sin(a)

##############################################################################
# 47. Now try getting the square roots with the "sqrt" function:



##############################################################################
# 48. Let's draw a graph showing the relationship of numbers and their sines.
# First, we'll need some sample data. We'll create a vector for you with some
# fractional values between 0 and 20, and store it in the x variable.

x <- seq(1, 20, 0.1)

##############################################################################
# 49. Now, try creating a second vector named y with the sines of
# those values:



##############################################################################
# 50. Once again, qplot will display these for us on a scatter plot:

qplot(x, y)

##############################################################################
# 51. We'll create a vector with some negative and positive values for you,
# and store it in the values variable. We'll also create a second vector with
# the absolute values of the first, and store it in the absolutes variable.

values <- -10:10
absolutes <- abs(values)

# Try plotting the vectors, with values on the horizontal axis, and absolutes
# on the vertical axis.

qplot(values, absolutes)

##############################################################################
# 52. Usually we need more than just a single vector. The most common type of
# object we will see this semester is called a data frame. Before constructing
# this, let's create two variables:

names <- c("One-Eye", "Peg-Leg", "Smitty", "Hook", "Scooter", "Dan",
           "Mikey", "Blackbeard")
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)

# The names are supposed to "line-up" with the limbs. (Get the joke? Peg-Leg
# has one leg missing; Hook has one arm missing; Scooter has no legs)

##############################################################################
# 53. We can combine these vectors into a data frame with the function
# data_frame:

pirates <- data_frame(names = names, limbs = limbs)

##############################################################################
# 54. Getting values from data frames isn't that different from vectors; you
# just have to provide two indices instead of one. Let's take another look at
# our data frame "pirates". Try getting the value from the second row in
# the first column of plank:

pirates[2, 1]

##############################################################################
# 55. Now, try getting the value from fourth row of the second column:

pirates[4, 2]

##############################################################################
# 56. As with vectors, to set a single value, just assign to it. Set the
# previous value to 0:

pirates[4, 2] <- 0

# Look at the results:

pirates

# Let's put it back to the correct value though:

pirates[4, 2] <- 3

##############################################################################
# 57. You can get an entire row of the matrix by omitting the column index
# (but keep the comma). Try retrieving the second row:

pirates[2, ]

##############################################################################
# 58. To get an entire column, omit the row index. Retrieve the second column:

pirates[, 2]

##############################################################################
# 59. You can read multiple rows or columns by providing a vector or sequence
# with their indices. Try retrieving columns 1 through 2:

pirates[, 1:2]

##############################################################################
# 60. You could instead provide a column name as a string in brackets.
# (This is often more readable.) Retrieve the "limbs" column:

pirates["limbs"]

# Now try getting the "names" column using this notation:



##############################################################################
# 61. There's also another way to get a column of a data frame name. Use the
# name of the data frame followed by a dollar sign, and the column name (without
# quotes). Try using it to get the "names" column:



# There is one important difference between the dollar sign and the brackets;
# with brackets a new, smaller data frame is returned. With the brackets only
# a vector is given back. For use this usually should not matter, but can be a
# source of bugs in advanced R coding.

##############################################################################
# 62. We can use the "$" notation to add columns to our data as well. Here we
# can add the pounds of treasure each crew member has:

pirates$pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)

# Which we can see by printing out the new data:

pirates

##############################################################################
# 63. A quick way to assess our battle-readiness would be to get the average
# of the crew's appendage counts. Statisticians call this the "mean". Call the
# mean function with the limbs vector.



##############################################################################
# 64. An average closer to 4 would be nice, but this will have to do. Here's a
# barplot of that vector:

qplot(pirates$limbs)


