#### PHENOLOGY DATA EXPLORATION ####

####### load necessary packages and set wd #######

library(dplyr)
library(readr)
library(tidyr) 
library(ggplot2)
library(esquisse)

qiki_phen_with_before_2019 <- read_csv("~/Desktop/qiki_phen_with_before_2019.txt")
View(qiki_phen_with_before_2019)