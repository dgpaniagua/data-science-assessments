##STATEMENT:

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)


##ANSWER
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate)) %>% filter((region=="Northeast" | region=="West") & (rate < 1)) %>% select(state, rate, rank)