##STATEMENT:

library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
exact <- mean(x > 79 & x <= 81)

##ANSWER:

approx <- pnorm(81, mean(x), sd(x)) - pnorm(79, mean(x), sd(x))
exact/approx
