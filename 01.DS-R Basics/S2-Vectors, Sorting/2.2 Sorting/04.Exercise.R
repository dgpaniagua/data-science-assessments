##STATEMENT:

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states

# Use the index you just defined to find the state with the smallest population


##ANSWER

# Define variable states to hold the states
states <- murders$state

# Use the index you just defined to find the state with the smallest population
states[i]