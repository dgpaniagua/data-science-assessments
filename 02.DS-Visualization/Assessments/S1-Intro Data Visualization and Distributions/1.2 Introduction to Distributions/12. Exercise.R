##STATEMENT:

library(dslabs)
data(heights)
x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)

##ANSWER:

pnorm(72, avg, stdev) - pnorm(69, avg, stdev)
