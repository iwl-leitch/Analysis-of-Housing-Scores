library("tidyverse")
library("janitor")
set.seed(200)

simulated_data <-
  tibble(
    #To approximate the amount of apartment buildings being scored
    "Apartment" = 1:1000, 
    #Randomly picks a score from 0 to 100, with replacement 1000 times
    "Score" = sample(
      c(0:100),
      size = 1000, 
      replace = TRUE), 
    #Randomly picks a housing type, with replacement, 1000 times
    "Type" = sample(
      x = c(
        "Private", 
        "Social", 
        "TCHC"
      ), 
      size = 1000, 
      replace = TRUE
    ),
    #Gives each apartment a year the score was handed out
    "Year" = sample(
      x = c(
        "2017", 
        "2018",
        "2019", 
        "2020", 
        "2021"
      ), 
      size = 1000, 
      replace = TRUE
    )
  )


#Should output 0
min(simulated_data$Score)


#Should output 100
max(simulated_data$Score)


#Should output around 50 
mean(simulated_data$Score)