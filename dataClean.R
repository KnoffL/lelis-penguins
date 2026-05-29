library(palmerpenguins)
library(readr)   # or readxl for Excel files
library(dplyr)
library(visdat)

# Check structure
glimpse(penguins_raw)

# Visualise column types
vis_dat(penguins_raw)
