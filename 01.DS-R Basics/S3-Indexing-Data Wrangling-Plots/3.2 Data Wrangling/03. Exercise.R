##STATEMENT:

# Load dplyr
library(dplyr)

# Use select to only show state names and abbreviations from murders

##ANSWER

select(murders, state, abb)