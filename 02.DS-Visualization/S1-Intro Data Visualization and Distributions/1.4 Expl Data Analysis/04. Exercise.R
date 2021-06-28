##STATEMENT:

x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

##ANSWER:

sd(x_with_error) - sd(x)