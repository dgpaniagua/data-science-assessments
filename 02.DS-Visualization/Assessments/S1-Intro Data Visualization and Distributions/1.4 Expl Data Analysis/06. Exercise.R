##STATEMENT:

x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

##ANSWER:

mad(x_with_error) - mad(x)