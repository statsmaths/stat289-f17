# Title: "Strings in R"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)
library(stringi)

theme_set(theme_minimal())

##############################################################################
# 01. For this lab, you are going to grab the dataset you would like to look
# at directly from Wikipedia. Set the url below the page you are interested
# in, for example here is the page on R (use whatever you want, but make
# sure it is a longer article or the results will be less interesting)

url <- "https://en.wikipedia.org/wiki/R_(programming_language)"

# Then run the following line to read the webpage in line by line and
# store it in a data frame named wpage:

wpage <- data_frame(line = readLines(url))

##############################################################################
# 02. Open the dataset in the data viewer. What is going on in the first few
# dozen lines? Can you find where the actual text starts looking at the
# data directly?

# Answer:

##############################################################################
# 03. A good heuristic for finding lines that actually contain text, rather
# than code, menus, and sidebars, is to look for the HTML tag <p>. Create
# new dataset named wpage_p where you filter only those lines containing
# the string "<p>". Make sure to use the stringi functions!



# How many lines is this dataset compared to the raw HTML file?

# Answer:

##############################################################################
# 04. In HTML, the tag <a> represent a link to another page. Add a variable
# `num_tags` to the dataset wpage_p that counts how many times the string "<a"
# occurs in each line. Note: Yes, we want to test for "<a" and NOT "<a>"
# because the tag will almost always include additional information inside
# the tag.



##############################################################################
# 05. Draw histogram of the number of links contained in each line. Does this
# distribution strike you as surprising at all (it may not)?



##############################################################################
# 06. Citations in Wikipedia occur between square braces, such as "[*]".
# Add an (approximate) count `num_cites` of the number of citations of each
# paragraph to the dataset by counting how many times the left "[" occurs.
# Note: you need to treat this as a fixed string



##############################################################################
# 07. Now, use a stringi function to add a variable `num_char` describing how
# many characters each paragraph contains to the data.



##############################################################################
# 08. Draw a scatter plot with a regression line showing the relationship
# between the number of characters in a sentence and the number of citations
# it has. Describe the pattern.



##############################################################################
# 09. In the notes, I gave you the expression, "<[^>]+>", which matches
# anything in between html tags. Use this to construct a new variable
# `line_clean` that removes HTML tags from `line`:



##############################################################################
# 10. The regular expression "\\[[^]]+\\]" will similarly match the citations
# in the page. Remove these from line_clean as well:



##############################################################################
# 11. The regular expression expression "[a-z]+" matches any number of
# non-capital letters. Use this to extract words w/o capital letters that
# proceed the word "is", saving it as a new variable `word`, from
# `line_clean`. Note: You'll probably only be able to do this approximately.



##############################################################################
# 12. The function stri_c can collapse a vector into a single string. So, we
# can see all of the text by writing:

text <- stri_c(wpage_p$line_clean, collapse = " ")

##############################################################################
# 13. For next time, we are going to scrape a Wikipedia page that has a number
# of links on it. Here are some examples:

#   https://en.wikipedia.org/wiki/List_of_birds_of_India
#   https://en.wikipedia.org/wiki/List_of_American_Revolutionary_War_battles
#   https://en.wikipedia.org/wiki/List_of_United_States_treaties
#   https://en.wikipedia.org/wiki/List_of_Nobel_laureates
#   https://en.wikipedia.org/wiki/List_of_best-selling_books
#   https://en.wikipedia.org/wiki/List_of_highest-grossing_films
#   https://en.wikipedia.org/wiki/List_of_epistemologists
#   https://en.wikipedia.org/wiki/List_of_computer_scientists
#   https://en.wikipedia.org/wiki/List_of_World_Heritage_Sites_in_Africa

# Find a couple of Wikipedia list pages such as these that you are interested
# in. I'll come around help navigate good choices with you and make sure not
# too many people are looking at the same data.




