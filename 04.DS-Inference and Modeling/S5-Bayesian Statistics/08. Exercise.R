######### EXERCISE: #########

#---------------------------------------
## From exercise 6:
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

# The results` object has already been loaded. Examine the values stored: `avg` and `se` of the spread
results

# Define `mu` and `tau`
mu <- 0
tau <- 0.01

# Define a variable called `sigma` that contains the standard error in the object `results`


# Define a variable called `Y` that contains the average in the object `results`


# Define a variable `B` using `sigma` and `tau`. Print this value to the console.


# Calculate the expected value of the posterior distribution

######### ANSWER #########

# Define a variable called `sigma` that contains the standard error in the object `results`
sigma <- results$se

# Define a variable called `Y` that contains the average in the object `results`
Y <- results$avg

# Define a variable `B` using `sigma` and `tau`. Print this value to the console.
B <- sigma^2/(sigma^2 + tau^2)
B

# Calculate the expected value of the posterior distribution
B*mu + (1-B)*Y