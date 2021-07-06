## STATEMENT:

# Assign a variable 'female_avg' as the average female height.
female_avg <- 64

# Assign a variable 'female_sd' as the standard deviation for female heights.
female_sd <- 3

# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is shorter than 5 feet. Print this value to the console.

## ANSWER:

pnorm(5*12, female_avg, female_sd)