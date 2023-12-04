library(tidyverse)
library(ggplot2)
bird_t <-read.csv("data/bird_transect_occurrence.csv") #import the bird transect data

(Bird_transect <- ggplot(bird_t, aes(y=individualCount,x=family))+ #plotting the individual birds observed per plot
    geom_bar(stat = "identity",position = "stack",orientation = "x")+ 
    labs(x = "Bird Families", y = "Individuals Observed", 
         title = "Birds sampled in transects for Northern and Southern Plots"))

ggsave("figures/plot1.png",plot = Bird_transect)


