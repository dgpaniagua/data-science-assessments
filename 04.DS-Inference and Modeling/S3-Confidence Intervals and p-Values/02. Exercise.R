##EXERCISE:
library(dslabs)
library(tidyverse)
#From exercise 1:
polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state=="U.S.")

# The `polls` object that filtered all the data by date and nation has already been loaded. Examine it using the `head` function.
#head(polls)

# Create a new object called `pollster_results` that contains columns for pollster name, end date, X_hat, se_hat, lower confidence interval, and upper confidence interval for each poll.


##ANSWER

pollster_results <- polls %>% 
  mutate(X_hat=rawpoll_clinton/100, 
         se_hat=sqrt(X_hat*(1-X_hat)/samplesize), 
         lower=X_hat-qnorm(0.975)*se_hat, 
         upper=X_hat+qnorm(0.975)*se_hat) %>% 
  select(pollster, enddate, X_hat, se_hat, lower, upper)