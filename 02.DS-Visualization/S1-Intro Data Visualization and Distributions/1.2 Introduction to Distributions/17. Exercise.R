##STATEMENT:

# In the previous exerceise we estimated the proportion of seven footers in the NBA using this simple code:
#   
#   p <- 1 - pnorm(7*12, 69, 3)
#   N <- round(p * 10^9)
#   10/N
#   
# Repeat the calculations performed in the previous question for Lebron James' height: 6 feet 8 inches. There are about 150 players, instead of 10, that are at least that tall in the NBA.

##ANSWER:

p <- 1 - pnorm(6*12+8, 69, 3)
N <- round(p * 10^9)
150/N
