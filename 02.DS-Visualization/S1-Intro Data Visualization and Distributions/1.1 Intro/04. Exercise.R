##STATEMENT:
#Use the table function to compute the frequencies of each unique height value. Because we are using the resulting frequency table in a later exercise we want you to save the results into an object and call it tab.

library(dslabs)
data(heights)
x <- heights$height

##ANSWER
tab <- table(x)
tab