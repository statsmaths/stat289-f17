# Statistics 289: Project 1

![](https://img.shields.io/badge/Final_Grade-NA-lightgrey.svg)  ![](https://img.shields.io/badge/Dataset-Bike_Sharing-blue.svg) ![](https://img.shields.io/badge/Dataset-NBA_Shots-blue.svg) ![](https://img.shields.io/badge/Dataset-Speed_Dating-blue.svg) ![](https://img.shields.io/badge/Dataset-Housing_Burden-blue.svg)

**Due**: 2017-10-24	(start of class)

This repository serves as starter code for the first project
assignment. Unlike the `.R` files we use in labs, the projects
are done with Rmarkdown files. These have an `.Rmd` extension.
You should also compile them into an html file and the associated
graphics. These must all be uploaded together to the project
website for full credit.

This project is set up to be a private repository. Once submitted,
I will post a markdown file with completed feedback and a filled
in grading rubric.

## Assignment Directions

For this assignment you will work with one of the following datasets:

- bike sharing in DC
- NBA shots
- speed dating
- metropolitan-level housing burden

Details about each dataset are included below.

The general idea behind the data analysis assignment is
to write an article in the style of FiveThirtyEight or
the New York Times that makes a data-driven argument about
your dataset. Your analysis should
be accompanied with statistical models and/or visualizations.
As with any research paper, I will not tell you exactly what
you need to show. Coming up with a good thesis statement that
can be backed up with the data is an essential part of the process.

You should aim to use somewhere between 500 and 1000 words in your
analysis and at least 3 graphics and 2 models.
These are not hard limits. If you really feel that you need slightly
more words/graphs/models to make your point, you are welcome to it.
However, please do not include a long run of graphics or models that
are not well explained in the text. 

During the week that this assignment is due, we will be orally
presenting your results. You do not need any seperate slides and
can present your report directly, however you should practice your
presentation ahead of time. Each student will have about 8 minutes
to present your work. Everyone should be prepared to go on the first
day of the week.

I do not usually read drafts, but am happy to help with and R
code issues you have or questions about how to create graphics.

# Datasets

## Bike Rentals in DC

Bike sharing systems are variants of traditional bicycle rentals, where
the process of renting and returning is heavily automated; typically, bikes
can be rented at one location and returned at another without ever having
to deal with a human being. There are currently several hundred bike sharing
programs in many different cities, and a great deal of interest in their
potential.

For this data analysis, we have a set of data from a bike sharing program
derived from a two-year usage log of a Washington, D.C. bike-sharing system
called Captial Bike Sharing (CBS). You can read the data in with the following

```r
bikes <- read_csv("https://statsmaths.github.io/stat_data/bikes.csv")
```

The following fields are available for you to work with:

-  season       - season of the year, 1 to 4 (Winter, Spring, Summer, Fall)
-  year         - code for the year: 0=inital year of program, 1=second year
-  workingday   - 1 for working days, 0 for weekends and holidays
-  weather      - weather, coded as follows:
    - 1 = Clear to partly cloudy
    - 2= Mist but no heavier precipitation
    - 3= Light rain or snow, possibly with thunder
    - 4= Heavy rain or snow
-  temp         - temperature in Celsius
-  humidity     - humidity percentage
-  windspeed    - windspeed in kilometers per hour
-  registered   - number of bike rentals that day by registered users
-  count        - count of total bike rentals that day, including both casual
                 and registered users


## NBA Shot Data

For this data analysis we will look at a shot-level dataset from the
2015 NBA Season. Read it in with:

```r
nba_shots <- read_csv("https://statsmaths.github.io/stat_data/nba_shots.csv")
```

Each row corresponds to an attempted shot by an NBA player, with results
on whether it was made and other details of the shot attemp. Variables to
work with are:

-  matchup                     - string description of the game
-  location                    - location of the game (home or away) relative
                                to the shooter
-  w                           - result of the game relative to the shooter
-  final_margin                - margin of the game relative to the shooter
-  shot_number                 - number of the shot relative to the shooter
-  period                      - period of the game
-  game_clock                  - amount of time on the game clock
-  shot_clock                  - amount of time left on the shot clock
-  dribbles                    - number of dribbles the shooter took
-  touch_time                  - amount of time the shooter held the ball
-  shot_dist                   - distance of the shot
-  pts_type                    - whether the shot was 2pt or 3pt
-  shot_result                 - result of the shot
-  closest_defender            - name of closest defender
-  closest_defender_player_id  - id of the closest defender
-  close_def_dist              - distance of the closest defender (feet)
-  fgm                         - field goals made
-  pts                         - total points
-  player_name                 - player name
-  player_id                   - id of the shooter
-  shooter_height              - height of the shooter (inches)
-  defender_height             - height of the defender (inches)

## Speed Dating

This data analysis studies a survey dataset from a series of speed
dating events. There are two rows of the dataset for each date; one from
the perspective of each person. All non-heterosexual relationships were
removed from the dataset I received, so these are all Male-Female pairings.

You can read the data in with the following

```r
speed <- read_csv("https://statsmaths.github.io/stat_data/speed_dating.csv")
```

Note that each speed date corresponds to two rows of the data set (one for
each partner). The available variabels are:

- match              - equl to 1 if both partners wanted to date one another
- decision           - equal to 1 if respondent wanted to date
- decision_partner   - equal to 1 if the partner wanted to date
- male_flag          - equal to 1 if respondent is a male
- samerace           - equal to 1 if partners are the same race
- age                - age of the respondent
- age_partner        - age of the partner
- goal_code          - code indicating why the respondent participated

    - 1 - Seemed like a fun night out
    - 2 - To meet new people
    - 3 - To get a date
    - 4 - Looking for a serious relationship
    - 5 - To say I did it
    - 6 - Other

- date_frequency     - code indicating how frequently the respondent goes
                     out on dates

    - 1 - Several times a week
    - 2 - Twice a week
    - 3 - Once a week
    - 4 - Twice a month
    - 5 - Once a month
    - 6 - Several times a year
    - 7 - Almost never

- go_out_frequency   - code indicating how frequently the respondent goes
                     out socially
    - 1 - Several times a week
    - 2 - Twice a week
    - 3 - Once a week
    - 4 - Twice a month
    - 5 - Once a month
    - 6 - Several times a year
    - 7 - Almost never

- expected_happy     - on a scale of 1-10, how happy did the respondent
                     expect to be with the people they meet during the
                     speed-dating event
- score_attractive   - how attractive did the respondent find their
                     partner (scale of 1-10)
- score_sincere      - how sincere did the respondent find their partner
                     (scale of 1-10)
- score_intelligence - how intelligent did the respondent find their
                     partner (scale of 1-10)
- score_fun          - how fun did the respondent find their partner (scale
                     of 1-10)
- score_ambition     - how ambitious did the respondent find their partner
                     (scale of 1-10)
- score_interest     - how interesting did the respondent find their partner
                     (scale of 1-10)
- score_overall      - overall, how did the respondent find their partner
                     (scale of 1-10)
- score_prob_match   - how likely do you think you are to match with your
                     partner? (scale 1-10)
                     
## Housing Burden for Commuters

The United States Census Bureau defines a metropolitan statistical area
as one of 389 "geographical region[s] with a relatively high population
density at its core and close economic ties throughout the area". Likewise,
a micropolitan statistical area is a "labor market area in the United States
centered on an urban cluster (urban area) with a population at least 10,000
but less than 50,000". Together these are called core based statistical
areas (CBSA). Today, we are going to look at data from the American
Community Survey from both of these regions. 

You can read the data in with the following

```r
cbsa <- read_csv("https://statsmaths.github.io/stat_data/acs_cbsa.csv")
```

One obvious approach is to explore what proportion of income residents spend
on housing as a function of the other variables. You may look at other or
additional relationships as well. The following fields are available for
you to work with (you of course do not need to work with all of them):

-  state                    - to letter state code
-  county                   - name of the county
-  cbsa_name                - name of core Based Statistical Area
-  cbsa_type                - type of core Based Statistical Area
-  median_income            - median household income
-  income_q1                - 20th percentile of household income
-  income_q2                - 40th percentile of household income
-  income_q3                - 60th percentile of household income
-  income_q4                - 80th percentile of household income
-  income_p95               - 95th percentile of household income
-  median_age               - median age of all people in area
-  age_00_02                - average children in age range per household
-  age_03_04                - average children in age range per household
-  age_05_05                - average children in age range per household
-  age_06_08                - average children in age range per household
-  age_09_11                - average children in age range per household
-  age_12_14                - average children in age range per household
-  age_15_18                - average children in age range per household
-  same_house               - percentage of households who lived in the same
                             house one year ago
-  same_county              - percentage of households who moved within the
                             county in the past year
-  same_state               - percentage of households who moved within the
                             state, but outside the county, in the past year
-  avg_duration             - average duration of commute
-  car_alone                - percentage of workers who drive alone to work
-  carpool                  - percentage of workers who carpool to work
-  public_transit           - percentage of workers who take public transit
-  walked                   - percentage of workers who walk to work
-  transit_other            - percentage of workers who take "other" transit
-  at_home                  - percentage of workers who work at home
-  time_0000_0459           - percentage of commuters departing in time range
-  time_0500_0529           - percentage of commuters departing in time range
-  time_0530_0559           - percentage of commuters departing in time range
-  time_0600_0629           - percentage of commuters departing in time range
-  time_0630_0659           - percentage of commuters departing in time range
-  time_0700_0729           - percentage of commuters departing in time range
-  time_0730_0759           - percentage of commuters departing in time range
-  time_0800_0829           - percentage of commuters departing in time range
-  time_0830_0859           - percentage of commuters departing in time range
-  time_0900_0959           - percentage of commuters departing in time range
-  time_1000_1059           - percentage of commuters departing in time range
-  time_1100_1159           - percentage of commuters departing in time range
-  time_1200_1549           - percentage of commuters departing in time range
-  time_1600_1149           - percentage of commuters departing in time range
-  white_alone              - percentage of people identifying as white
-  native_american_alone    - percentage of people identifying as Native
                             Americans
-  asian_alone              - percentage of people identifying as Asian
-  pacific_alone            - percentage of people identifying as Pacific
                             Islanders or Hawaiians
-  other_alone              - percentage of people identifying as a single
                             "other" race
-  multiracial              - percentage of people identifying as multiracial
-  healthcare_private       - percentage of people with private heathcare
-  healthcare_public        - percentage of people with public heathcare
-  healthcare_none          - percentage of people with no heathcare
-  housing_costs            - mean yearly housing costs
-  housing_000000_000000    - percentage of houses assessed in this range ($)
-  housing_010000_014999    - percentage of houses assessed in this range ($)
-  housing_015000_019999    - percentage of houses assessed in this range ($)
-  housing_020000_024999    - percentage of houses assessed in this range ($)
-  housing_025000_029999    - percentage of houses assessed in this range ($)
-  housing_030000_034999    - percentage of houses assessed in this range ($)
-  housing_035000_039999    - percentage of houses assessed in this range ($)
-  housing_040000_049999    - percentage of houses assessed in this range ($)
-  housing_050000_059999    - percentage of houses assessed in this range ($)
-  housing_060000_069999    - percentage of houses assessed in this range ($)
-  housing_070000_079999    - percentage of houses assessed in this range ($)
-  housing_080000_089999    - percentage of houses assessed in this range ($)
-  housing_090000_099999    - percentage of houses assessed in this range ($)
-  housing_100000_124999    - percentage of houses assessed in this range ($)
-  housing_125000_149999    - percentage of houses assessed in this range ($)
-  housing_150000_174999    - percentage of houses assessed in this range ($)
-  housing_175000_199999    - percentage of houses assessed in this range ($)
-  housing_200000_249999    - percentage of houses assessed in this range ($)
-  housing_250000_299999    - percentage of houses assessed in this range ($)
-  housing_300000_399999    - percentage of houses assessed in this range ($)
-  housing_400000_499999    - percentage of houses assessed in this range ($)
-  housing_500000_749999    - percentage of houses assessed in this range ($)
-  housing_750000_999999    - percentage of houses assessed in this range ($)
-  housing_above_1_million  - percentage of houses assessed in this range ($)


