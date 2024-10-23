setwd("C:/Users/TOURE/Mes documents/REPOSITORIES/IM_raw_data/ETH_R2/")

library(tidyverse)
library(dplyr)
library(sf)
library(flextable)
library(stringr)
library(stringi)
library(lubridate)
library(readxl)
library(ggplot2)

DF <- read_excel("AFRO_Independant monitoring data Sharing-Tig-2nd round.xlsx")
DB <- DF |> 
  select(Country, Region, District, Response, Vaccine.type, roundNumber, start_date, endate_date, year, Number_of_HH_visited, u5_present, u5_FM, missed_child, cv, r_non_FM_Absent, r_non_FM_NC, r_non_FM_hh_notvisited, r_non_FM_hh_notrevisited, r_non_FM_sleep, r_non_FM_vaccinatedRoutine, Other_reasons) |>
  arrange(start_date)
write_csv(DB,"C:/Users/TOURE/Mes documents/REPOSITORIES/IM_raw_data/IM_level/ETH1_IM.csv_IM.csv")