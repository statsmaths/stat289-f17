# Title: "Scraping Wikipedia"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)
library(stringi)

theme_set(theme_minimal())


##############################################################################
# 01. The second project has a very different form from the first project. In
# project one I gave you dataset and you were instructed to perform an
# exploratory analysis of the data in order to draw an interesting thesis
# statement about it. Your report then was supposed to support this thesis by
# using statistical arguments.
#
# In this assignment the primary goal of the report is to conduct inferential
# data analysis. Here, we have an hypothesis and will then generate data
# to test this hypothesis. The report will focus on whether there is support
# for the hypothesis or not. Note: it is not a bad thing if you fail to
# support your initial hypothesis.
#
# The data we will look at for this assignment consists of written articles
# published on Wikipedia. The articles should be from one or more list of
# pages. Here are just some of things that we might be able to get from the
# Wikipedia pages:
#
#    - number and location of citations
#    - number, value, and location of links to other pages
#    - number of external links
#    - number of "citation needed" boxes
#    - data from info boxes
#    - number of sentences
#    - readability scores
#    - comparison with pages from other languages
#
# Possible hypotheses might take the form of:
#
#    - cities in the US and Europe have more external citations than
#      cities in the Asia and Africa
#    - Democratic politicians have more external references than Republican
#      politicians
#    - US Senators have longer pagers and more citations than
#      US Representatives
#    - UK MPs have shorter pages than Australian MPs
#    - pages for Swiss Cantons are longest in the predominant language spoken
#      in the Canton
#    - the number of mentions of the string "World Series" are a linear
#      function of the number of times an MLB team has won the World Series.
#

##############################################################################
# 02. What list or lists do you want to work with for this project?

# Answer:

##############################################################################
# 03. What hypothesis do you think you would like to look at for this list
# or collection of lists?

# Answer:

##############################################################################
# 04. Write code to download the Wikipedia page that contains the list you
# want to work with (or at least the first page):




##############################################################################
# 05. Grab links to the individual pages you would like to look at from the
# list data above:




##############################################################################
# 06. Grab the first page from the individual links and verify that it
# produces the correct output.




##############################################################################
# 07. Cycle over all the links and produce a basic summary statistic, such as
# the length of each page. From here, it will be relatively easy to compute
# whatever statistics you are interested in to verify your hypothesis from
# equation 03.






