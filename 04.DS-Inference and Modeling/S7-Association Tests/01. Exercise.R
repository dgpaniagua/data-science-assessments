######### EXERCISE: #########

#-----------------
# from exercise 1 (S6):

# Load the libraries and data
library(dplyr)
library(dslabs)
data("polls_us_election_2016")
data("results_us_election_2016") ### NOT FOUND

# Create a table called `polls` that filters by  state, date, and reports the spread
polls <- polls_us_election_2016 %>% 
  filter(state != "U.S." & enddate >= "2016-10-31") %>% 
  mutate(spread = rawpoll_clinton/100 - rawpoll_trump/100)

# Create an object called `cis` that has the columns indicated in the instructions
cis <- polls %>% mutate(X_hat = (spread+1)/2, se = 2*sqrt(X_hat*(1-X_hat)/samplesize), 
                        lower = spread - qnorm(0.975)*se, upper = spread + qnorm(0.975)*se) %>%
  select(state, startdate, enddate, pollster, grade, spread, lower, upper)

#-----------------
#-----------------
# from exercise 7 (S6):

# The `cis` data have already been loaded for you
add <- results_us_election_2016 %>% mutate(actual_spread = clinton/100 - trump/100) %>% select(state, actual_spread)
ci_data <- cis %>% mutate(state = as.character(state)) %>% left_join(add, by = "state")

# Create an object called `errors` that calculates the difference between the predicted and actual spread and indicates if the correct winner was predicted
errors <- cis %>% mutate(error = spread - actual_spread, hit = sign(spread) == sign(actual_spread))
#-----------------

# The 'errors' data have already been loaded. Examine them using the `head` function.
head(errors)

# Generate an object called 'totals' that contains the numbers of good and bad predictions for polls rated A- and C-

# Print the proportion of hits for grade A- polls to the console

# Print the proportion of hits for grade C- polls to the console

######### ANSWER #########
# Generate an object called 'totals' that contains the numbers of good and bad predictions for polls rated A- and C-
totals <- errors %>% filter(grade == "A-" | grade == "C-") %>%
  group_by(grade, hit) %>% summarize(n=n()) %>% spread(grade, n)

# Print the proportion of hits for grade A- polls to the console
as.numeric(totals[2, "A-"]/sum(totals["A-"]))

# Print the proportion of hits for grade C- polls to the console
as.numeric(totals[2, "C-"]/sum(totals["C-"]))
