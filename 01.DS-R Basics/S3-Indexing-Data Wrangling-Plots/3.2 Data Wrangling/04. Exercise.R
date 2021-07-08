##STATEMENT:

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates

##ANSWER

filter(murders, rank<=5)