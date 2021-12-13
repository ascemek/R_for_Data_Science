library(Lock5Data)
library(tidyverse)


head(USStates)
unique(USStates$Region)

state_academic <- USStates %>%
  select(State, Region, EighthGradeMath, HighSchool, College, IQ, StudentSpending)

state_health <- USStates %>%
  select(State, Region,Vegetables, Fruit, Smokers, PhysicalActivity, Obese, HeavyDrinkers, Insured)


state_academic_south <- state_academic %>%
  filter(Region == "S")
state_academic_west <- state_academic %>%
  filter(Region == "W")
state_academic_ne <- state_academic %>%
  filter(Region == "NE")
state_academic_mw <- state_academic %>%
  filter(Region == "MW")

state_health_south <- state_health %>%
  filter(Region == "S")
state_health_west <- state_health %>%
  filter(Region == "W")
state_health_ne <- state_health %>%
  filter(Region == "NE")
state_health_mw <- state_health %>%
  filter(Region == "MW")

# state_academic_sne <- state_academic_south %>%
#   add_row(state_academic_ne)
# str(state_academic_sne)
# 
# state_south <- state_academic_south %>%
#   add_column(state_health_south)
# str(state_south)
