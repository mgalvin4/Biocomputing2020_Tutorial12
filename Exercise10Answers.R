# Tutorial 10

#Question 1

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

# Question 2

newdata = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
dim(newdata)
head(newdata)

# Bar plot of average observations per region
ggplot(data=newdata, aes(x=region, y=observations, fill=region)) +
  stat_summary(fun = mean,
               geom = "bar") +
  ylab("average observations") +
  theme_classic()

