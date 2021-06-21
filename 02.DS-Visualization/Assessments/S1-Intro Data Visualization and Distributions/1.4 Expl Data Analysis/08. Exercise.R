##STATEMENT:

# x <- Galton$child
# error_avg <- function(k){
#   
#   
# }

##ANSWER:

x <- Galton$child
error_avg <- function(k){
  x_with_error <- x
  x_with_error[1] <- k
  mean(x_with_error)
}

error_avg(10000)
error_avg(-10000)