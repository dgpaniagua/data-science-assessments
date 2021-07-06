## STATEMENT:

# Assign a variable 'female_avg' as the average female height.
female_avg <- 64

# Assign a variable 'female_sd' as the standard deviation for female heights.
female_sd <- 3

# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.

## ANSWER:

pnorm(67, female_avg, female_sd) - pnorm(61, female_avg, female_sd)