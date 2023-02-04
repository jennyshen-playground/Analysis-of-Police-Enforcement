#### Preamble ####
# Purpose: Clean the data downloaded from Open Data Toronto
# Author: Jenny Shen
# Email: jennycy.shen@mail.utoronto.ca
# Author: Jenny Shen
# Date: 3 February 2023
# Prerequisites: Need to know where to get the police enforcement data
# License: MIT


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("raw_data.csv"
)

#### Simulate data ####
set.seed(853)

simulated_data <-
  tibble(
    # Use Enforcement Action Incidents or Reported Use of Force Incidents to represent each type of incidents
    "Type of Incidents" = sample(c("Enforcement Action Incidents", "Reported Use of Force Incidents"), size = 176, replace = TRUE),
    # Randomly pick an option, with replacement, 176 times
    "Perceived race" = sample(
      x = c(
        "Latino",
        "Middle Eastern",
        "South Asian",
        "White",
        "Multiple race group",
        "Black",
        "East/Southeast Asian",
        "Indigenous"
      ),
      size = 176,
      replace = TRUE
    ),
    incident_count = runif(
      n = 176,
      min = 1,
      max = 5411
    )
  )

simulated_data

# Test the cleaned dataset

cleaned_enforcement_data$Perceived_Race_of_People_Involv |>
  unique() == c(
    "Latino",
    "Middle Eastern",
    "South Asian",
    "White",
    "Multiple race group",
    "Black",
    "East/Southeast Asian",
    "Indigenous"
  )

cleaned_enforcement_data$Incident_Count |> min() == 16

cleaned_enforcement_data$Incident_Count |> max() == 5411

cleaned_reported_data$Incident_Count |> min() == 1

cleaned_reported_data$Incident_Count |> max() == 137

cleaned_reported_data$Incident_Count |> class() == "numeric"