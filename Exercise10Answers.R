# Tutorial 12 Exercise 10 -- Galvin & DiDonato

#Question 1

# load the data about Golden Retriever weight(lb) over time(weeks)
library(ggplot2)
setwd("/Users/Maddie Galvin/Desktop/Biocomputing2020_Tutorial12")
dogs <- read.csv("DogWeight.csv", header=TRUE, stringsAsFactors=FALSE)
head(dogs)
tail(dogs)

# Create a scatter plot with a trend line
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

# Scatter Plot of all the observations
ggplot(data=newdata, aes(x=region, y=observations, color=region)) +
  geom_point() +
  geom_jitter() +
  theme_classic()

# The bar and scatter plots tell different stories because the bar plot shows
# only the average, while the scatter plot shows all the observations. When
# you only see the average, you won't understand the high variation in some
# of the observations for regions like West and East. So the scatter plot
# gives a more complete story of all the data collected, while the bar plot 
# shows just the 'highlights' through the average for each region.