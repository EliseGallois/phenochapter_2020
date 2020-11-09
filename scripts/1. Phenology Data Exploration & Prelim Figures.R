### 1. Phenology Monitoring Exploration and Preliminary Figures ###
### Elise Gallois, elise.gallois94@gmail.com ###
### Date: 9th April 2020 ###

#### LOAD PACKAGES & DATA #####

library(dplyr)
library(readr)
library(tidyverse) 
library(esquisse)

pheno <- read_csv(file = "data/qiki_phen_with_before_2019.txt")
View(pheno)

####  GRAPH EACH SPECIES   ####

# Plot 1 - Snow Melt Date for all species 2001-2019 #
snowmelt_plot <- ggplot(pheno) +
  aes(x = P1, fill = Spp) +
  geom_density(adjust = 1L, alpha = .7) +
  scale_fill_viridis() +
  labs(x = "Snow Melt Day of Year - Average 2001 - 2019", y = "Density") +
  theme_classic() +
  theme(legend.position = "bottom")

snowmelt_plot <- snowmelt_plot + labs(fill = "Species")

ggsave(snowmelt_plot, filename = "figures/snowmelt_plot.png", height = 7, width = 8)

# Plot 2 - Bud burst dat for all species 2001-2019 #
(budburst_plot <- ggplot(pheno) +
  aes(x = P2, fill = Spp) +
  geom_density(adjust = 1L, alpha = .7) +
  hrbrthemes::scale_fill_ipsum() +
  hrbrthemes::scale_color_ipsum() +
  labs(x = "Bud Burst Day of Year - Average 2001 - 2019", y = "Density") +
  theme_classic() +
  theme(legend.position = "bottom"))

budburst_plot <- budburst_plot + labs(fill = "Species")
ggsave(budburst_plot, filename = "figures/budburst_plot.png", height = 7, width = 8)


snowmelt <- ggplot(pheno) +
 aes(x = P1, y = P2, colour = Spp) +
 geom_point(size = 1L) +
 geom_smooth(span = 0.75) +
  hrbrthemes::scale_fill_ipsum() +
  hrbrthemes::scale_color_ipsum() +
 labs(x = "Date of snow melt (DOY)", y = "Date of bud burst (DOY)", color = "Species") +
 theme_minimal()
