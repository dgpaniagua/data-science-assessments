##STATEMENT:

# Use your answer to the previous exercise to estimate the proportion of men that are seven feet tall or taller in the world and store that value as p.
# Then multiply this value by 1 billion (10^9) round the number of 18-40 year old men who are seven feet tall or taller to the nearest integer with round. (Do not store this value in an object.)


##ANSWER:

p <- 1 - pnorm(7*12, 69, 3)
round(p*10^9)
