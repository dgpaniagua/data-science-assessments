######### EXERCISE: #########

# Generate a vector 'df' that contains a sequence of numbers from 3 to 50


# Make a function called 'pt_func' that calculates the probability that a value is more than |2| for any degrees of freedom 


# Generate a vector 'probs' that uses the `pt_func` function to calculate the probabilities


# Plot 'df' on the x-axis and 'probs' on the y-axis

######### ANSWER #########
# Generate a vector 'df' that contains a sequence of numbers from 3 to 50
df <- seq(3,50)

# Make a function called 'pt_func' that calculates the probability that a value is more than |2| for any degrees of freedom 
pt_func <- function(df){
  (1 - pt(2, df))*2
}

# Generate a vector 'probs' that uses the `pt_func` function to calculate the probabilities
probs <- sapply(df, pt_func)

# Plot 'df' on the x-axis and 'probs' on the y-axis
plot(df, probs)
