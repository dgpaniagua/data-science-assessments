##STATEMENT:

# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes a column named rate with the per 100,000 murder rates

##ANSWER

murders <- mutate(murders, rate = (total*10^5)/population)