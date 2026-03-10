#This script randomly orders the ten students in our class.
rm(list=ls())
library(tidyverse)

#load the roster
roster <- read_csv("ECON3902W001-roster.csv")

# create random ranks
set.seed(20260307)
random_order <- sample(1:10)
print(random_order)

roster <- roster %>%
  mutate(random_order = random_order) %>%
  arrange(random_order)
print(roster)