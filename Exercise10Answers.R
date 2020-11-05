# Tutorial 10

library(ggplot2)
setwd("/Users/Maddie Galvin/Desktop/Biocomputing2020_Tutorial12")
dogs <- read.csv("DogWeight.csv", header=TRUE, stringsAsFactors=FALSE)
head(dogs)
tail(dogs)

ggplot(data=dogs, aes(x=ï..Weeks, y=Weight)) +
  geom_point() +
  xlab("Weeks") +
  stat_smooth(method="lm") +
  theme_classic()
