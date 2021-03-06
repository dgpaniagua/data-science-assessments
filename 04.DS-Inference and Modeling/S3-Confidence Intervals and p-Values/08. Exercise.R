######### EXERCISE: #########
library(dslabs)
library(tidyverse)
library(ggplot2)

# From exercise 5:
polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state == "U.S.") %>% mutate(d_hat=rawpoll_clinton/100 - rawpoll_trump/100)

# The `polls` object has already been loaded. Examine it using the `head` function.
head(polls)

# Add variable called `error` to the object `polls` that contains the difference between d_hat and the actual difference on election day. Then make a plot of the error stratified by pollster.

######### ANSWER #########
polls %>% mutate(error=d_hat-0.021) %>% ggplot(aes(x = pollster, y = error))  +
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))