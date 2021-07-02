##STATEMENT:

## add the correct layer using +
heights %>% 
  ggplot(aes(height))

##ANSWER:

heights %>% 
  ggplot(aes(height)) + geom_density()