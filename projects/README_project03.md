# Statistics 289: Project 3

![](https://img.shields.io/badge/Final_Grade-NA-lightgrey.svg)  ![](https://img.shields.io/badge/Dataset-Wikipedia-blue.svg)  ![](https://img.shields.io/badge/Dataset-Shakspeare-blue.svg)  ![](https://img.shields.io/badge/Dataset-RFID-blue.svg)  ![](https://img.shields.io/badge/Dataset-Baseball-blue.svg)

**Due:** 2017-12-05 (start of class)

This repository serves as starter code for the third project
assignment. Unlike the `.R` files we use in labs, the projects
are done with Rmarkdown files. These have an `.Rmd` extension.
You should also compile them into an html file and the associated
graphics. These must all be uploaded together to the project
website for full credit.

This project is set up to be a private repository. Once submitted,
I will post a markdown file with completed feedback and a filled
in grading rubric.

## Assignment Directions

The third project requires you do a data analysis based on network data. Your analysis
should not focus on just a single network, but should consist of comparing multiple
networks to find more interesting meta-patterns. I am open to other suggestions, but
generally I recommend that you use one of the following datasets:

- **Wikipedia links data** (double hops; text vs. citation vs. co-citation; contrast different starting points)
- **Baseball datasets** (compare college vs. pro; look across years; apply different cut-offs)
- **Shakespeare plays** (compare speech vs. time; play with the cut-off; compare plays, perhaps clustered on type:
comedy, tragedy, history)
- **RFID data** (look at the graph over time; compare across days, hours, types, and individuals)
- **Supreme Court citations** (look at the graph for various issues, perhaps over time, using different cut-offs and looking at citation and co-citation graphs)

The end goal is to find something interesting and relay these interesting ideas through
graphics and/or models through your data analysis report. This should more closely resemble
the first data analysis rather than the second one (i.e., there should be a thesis rather than
an hypothesis). We will have presentations on these reports during the final week of the term.

## Data sources

As mentioned in the last few sets of notes, you can find the data sources from my
website. For the baseball data, you can do either or both of:

```{r}
mlb_nodes <- read_csv("https://statsmaths.github.io/stat_data/mlb_teams_nodes.csv")
mlb_edges <- read_csv("https://statsmaths.github.io/stat_data/mlb_teams_edges.csv")

college_nodes <- read_csv("https://statsmaths.github.io/stat_data/mlb_college_nodes.csv")
college_edges <- read_csv("https://statsmaths.github.io/stat_data/mlb_college_edges.csv")
```

The RFID data comes from:

```{r}
rfid_nodes <- read_csv("https://statsmaths.github.io/stat_data/rfid_nodes.csv")
rfid_edges <- read_csv("https://statsmaths.github.io/stat_data/rfid_edges.csv")
```

All of the Shakespeare data comes from:

```{r}
temp <- read_rds(url("https://github.com/statsmaths/stat_data/blob/gh-pages/shakespeare_plays.rds?raw=true"))
speech <- temp$speech
time <- temp$time
plays <- temp$plays
```

And the Supreme Court data comes from:

```{r}
scotus_edges <- read_csv("https://statsmaths.github.io/stat_data/scotus_edges.csv")
scotus_nodes <- read_csv("https://statsmaths.github.io/stat_data/scotus_nodes.csv")
scotus_edges_co <- read_csv("https://statsmaths.github.io/stat_data/scotus_edges_cocitation.csv")
```

Of course, the Wikipedia dataset will need to be created by you using the provided
code from Class 23.





