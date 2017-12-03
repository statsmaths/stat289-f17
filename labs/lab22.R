# Title: "Supreme Court Networks"
# Name:

# Load required functions and packages
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

theme_set(theme_minimal())

# make sure that you install igraph and re-install smodels:
install.packages("igraph")
devtools::install_github("statsmaths/smodels")

# and then load *just the first one* in:
library(smodels)

# The network data we will look at in today's lab consists of citations
# between Supreme Court cases; that is, two cases are linked if one case
# cited the other; for simplicity, we will consider edges as being undirected

# Read the data in with these:
scotus_edges <- read_csv("https://statsmaths.github.io/stat_data/scotus_edges.csv")
scotus_nodes <- read_csv("https://statsmaths.github.io/stat_data/scotus_nodes.csv")

# Each court case is assigned to a topical code. You can find a list of these
# here (along with the number of cases in each issue):
#
#  - https://github.com/statsmaths/dh-network-lab/blob/master/issue_codes.csv
#
# For today, select a set of 1-3 related issue codes and answer the following
# questions.

#######################################################################
# 01. Filter scotus_nodes to include only those cases in your selected
# set of issues.



#######################################################################
# 02. Compute graph annotations for the remaining nodes with the
# citation edges


#######################################################################
# 03. Plot the graph, using color to represent the eigenvalue
# centrality



#######################################################################
# 04. Use plotly::ggplotly() to produce an interactive graph that
# includes the names of the cases.



#######################################################################
# 05. Find the most central case by eigenvalue centrality. Search
# online for information about the case. Does it seem central to this
# area of law?




#######################################################################
# 06. Produce three more graphics showing different features of the
# data. For example, plot the issue codes and see how well they are
# split (or not) on the plot. Or, plot points with the year of the case
# or the number of dissenting votes; what patterns appear here?





















