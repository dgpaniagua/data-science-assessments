######### EXERCISE: #########
library(dslabs)
library(tidyverse)

# From exercise 5:
polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state == "U.S.") %>% mutate(d_hat=rawpoll_clinton/100 - rawpoll_trump/100)
# From exercise 6:
pollster_results <- polls %>% 
  mutate(X_hat=(d_hat + 1)/2, 
         se_hat=2*sqrt(X_hat*(1-X_hat)/samplesize),
         lower=d_hat - qnorm(0.975)*se_hat,
         upper=d_hat + qnorm(0.975)*se_hat) %>% 
  select(pollster, enddate, d_hat, lower, upper)

# The `pollster_results` object has already been loaded. Examine it using the `head` function.
head(pollster_results)

#Add a logical variable called `hit` that indicates whether the actual value (0.021) exists within 
#the confidence interval of each poll. Summarize the average `hit` result to determine the proportion 
#of polls with confidence intervals include the actual value. Save the result as an object called `avg_hit`.

######### ANSWER #########

avg_hit <- pollster_results %>% 
  mutate(hit = 0.021 >= lower & 0.021 <= upper) %>%
  summarize(mean(hit))