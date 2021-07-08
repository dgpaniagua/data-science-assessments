##STATEMENT:

# Use filter to create a new data frame no_south

# Use nrow() to calculate the number of rows

##ANSWER

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")

# Use nrow() to calculate the number of rows
nrow(no_south)