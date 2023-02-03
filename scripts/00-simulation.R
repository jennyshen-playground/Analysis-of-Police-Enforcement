#### Preamble ####
# Purpose: Read in data from the 2020 Police Enforcement and make a 
# graph of the use of force in each perceived race
# Author: Jenny Shen
# Email: jennycy.shen@mail.utoronto.ca
# Date: 3 February 2023
# Prerequisites: Need to know where to get the police enforcement data

#### Simulate data ####
set.seed(853)

simulated_force_data <-
  tibble(
    perceived_race =
      c(
        rep("Black", 200),
        rep("White", 200),
        rep("East/Southeast Asian", 200),
        rep('Indigenious', 200),
        rep('Middle Eastern', 200),
        rep('Multiple race group', 200),
        rep('South Asian', 200),
        rep('White', 200)
      ),
    Type_of_Incident = 
      rep("Reported Use of Force Incidents", 800),
    Incident_Count = 
      runif(
        n = 800,
        min = 0,
        max = 100
      )
  )
