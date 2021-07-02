##STATEMENT:

#Rewrite the code above to make the label color correspond to the state's region. Because this is a mapping, you will have to do this through the aes function. Use the existing aes function inside of the ggplot function.

## edit this code
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label()

##ANSWER:

murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
