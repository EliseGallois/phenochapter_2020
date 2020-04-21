### 1. Phenology Data Exploration and Preliminary Figures ###
### Elise Gallois, elise.gallois94@gmail.com ###
### Date: 21st April 2020 ###

#### LOAD PACKAGES & DATA #####

library(dplyr)
library(readr)
library(tidyr) 
library(ggplot2)
library(esquisse)

pheno <- read_csv(file = "data/qiki_phen_with_before_2019.txt")
View(pheno)

####  GRAPH EACH SPECIES   ####
