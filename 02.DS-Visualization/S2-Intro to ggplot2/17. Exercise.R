##STATEMENT:

p <- heights %>% 
  ggplot(aes(height))
## add a layer to p

##ANSWER:

p + geom_histogram()