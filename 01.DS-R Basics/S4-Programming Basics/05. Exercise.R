##STATEMENT:

# Create `altman_plot` 


##ANSWER:

altman_plot <- function(x, y){
  plot(x+y, y-x)
}
