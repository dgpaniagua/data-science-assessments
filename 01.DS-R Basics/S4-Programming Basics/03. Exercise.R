library(dslabs)
data(murders)

##STATEMENT:

# Assign the state abbreviation when the state name is longer than 8 characters 

##ANSWER:

new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)
