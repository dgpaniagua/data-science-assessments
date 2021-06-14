##STATEMENT:

library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]

##ANSWER:

mean(x <= 72) - mean(x <= 69)
