##STATEMENT:

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame

##ANSWER

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(!abbs %in% murders$abb)

# Names of abbreviations in `ind`
abbs[ind]