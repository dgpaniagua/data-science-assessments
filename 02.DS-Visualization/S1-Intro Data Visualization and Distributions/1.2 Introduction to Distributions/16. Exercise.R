##STATEMENT:

#There are about 10 National Basketball Association (NBA) players that are 7 feet tall or higher. 
#Use your answer to exercise 4 to estimate the proportion of men that are seven feet tall or taller in the world and store that value as p.
#Use your answer to the previous exercise (exercise 5) to round the number of 18-40 year old men who are seven feet tall or taller to the nearest integer and store that value as N.
#Then calculate the proportion of the world's 18 to 40 year old seven footers that are in the NBA. (Do not store this value in an object.)

##ANSWER:

p <- 1 - pnorm(7*12, 69, 3)
round(p*10^9)
10/N
