## STATEMENT:

# Assign a variable 'female_avg' as the average female height. Convert this value to centimeters.
female_avg <- 64*2.54

# Assign a variable 'female_sd' as the standard deviation for female heights. Convert this value to centimeters.
female_sd <- 3*2.54

# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.

## ANSWER:

pnorm(67*2.54, female_avg, female_sd) - pnorm(61*2.54, female_avg, female_sd)