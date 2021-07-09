##STATEMENT:

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n


##ANSWER:

for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}
