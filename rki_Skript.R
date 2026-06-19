# This is the exploration of a alternative messier data set

library(readr)
library(tidyverse)
library(visdat)

rki_data <- read_tsv("GBE_Indikatoren_nichtuebertragbarer_Erkrankungen.tsv")
View(rki_data)
glimpse(rki_data)

# Number of observations for depressive symptoms (2040201) and
# for diagnosed depression (2040202)
rki_data %>%
  filter(Indikator_ID == 2040201) %>%
  nrow()
rki_data %>%
  filter(Indikator_ID == 2040202) %>%
  nrow()

rki_data %>%
  filter(!is.na(Fälle)) %>%
  nrow()

# Visualise column types
vis_dat(rki_data, warn_large_data = FALSE)

# Region ID is read as character, but is number
# Zeitraum ISO contains both start and end date and is therefore read as string
# For time series, it may be more suited to have the start and end date as two
# seperate columns that are read as Dates
