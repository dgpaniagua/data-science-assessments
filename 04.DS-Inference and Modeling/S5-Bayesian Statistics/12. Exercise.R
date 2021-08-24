######### EXERCISE: #########

#---------------------------------------
## From exercise 6 and 10:
# Load the libraries and poll data
library(dplyr)
library(dslabs)
data(polls_us_election_2016)

# Create an object `polls` that contains the spread of predictions for each candidate in Florida during the last polling days
polls <- polls_us_election_2016 %>% 
  filter(state == "Florida" & enddate >= "2016-11-04" ) %>% 
  mutate(spread = rawpoll_clinton/100 - rawpoll_trump/100)

# Examine the `polls` object using the `head` function
head(polls)

# Create an object called `results` that has two columns containing the average spread (`avg`) and the standard error (`se`). Print the results to the console.
results <- polls %>% summarize(avg = mean(spread), se = sd(spread)/sqrt(n()))
#---------------------------------------

# Define the variables from previous exercises
mu <- 0
sigma <- results$se
Y <- results$avg

# Define a variable `taus` as different values of tau
taus <- seq(0.005, 0.05, len = 100)

# Create a function called `p_calc` that generates `B` and calculates the probability of the spread being less than 0

# Create a vector called `ps` by applying the function `p_calc` across values in `taus`

# Plot `taus` on the x-axis and `ps` on the y-axis

######### ANSWER #########

# Create a function called `p_calc` that generates `B` and calculates the probability of the spread being less than 0
p_calc <- function(tau){
  B <- sigma^2 / (sigma^2 + tau^2)
  exp_value <- B*mu + (1-B)*Y 
  se <- sqrt( 1/ (1/sigma^2 + 1/tau^2))
  pnorm(0, exp_value, se)
}

# Create a vector called `ps` by applying the function `p_calc` across values in `taus`
ps <- sapply(taus, p_calc)

# Plot `taus` on the x-axis and `ps` on the y-axis
plot(taus, ps)