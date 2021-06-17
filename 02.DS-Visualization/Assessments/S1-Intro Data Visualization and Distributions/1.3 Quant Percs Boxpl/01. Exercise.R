##STATEMENT:

library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]

##ANSWER:

length(male)
length(female)
