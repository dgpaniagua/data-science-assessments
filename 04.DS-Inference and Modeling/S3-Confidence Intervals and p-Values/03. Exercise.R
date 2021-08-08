##EXERCISE:
library(dslabs)
library(tidyverse)
#From exercise 1:
polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state=="U.S.")
#From exercise 2:
pollster_results <- polls %>% 
  mutate(X_hat=rawpoll_clinton/100, 
         se_hat=sqrt(X_hat*(1-X_hat)/samplesize), 
         lower=X_hat-qnorm(0.975)*se_hat, 
         upper=X_hat+qnorm(0.975)*se_hat) %>% 
  select(pollster, enddate, X_hat, se_hat, lower, upper)

# The `pollster_results` object has already been loaded. Examine it using the `head` function.
head(pollster_results)

# Add a logical variable called `hit` that indicates whether the actual value exists within the confidence interval of each poll. Summarize the average `hit` result to determine the proportion of polls with confidence intervals include the actual value. Save the result as an object called `avg_hit`.
# avg_hit <- 
  

##ANSWER
avg_hit <- pollster_results %>% 
  mutate(hit = 0.482 >= lower & 0.482 <= upper) %>%
  summarize(mean(hit))
