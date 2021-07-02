##STATEMENT:


#Rewrite the code above to make the labels blue by adding an argument to geom_label.
#You do not need to put the color argument inside of an aes col.
#Note that the grader expects you to use the argument color instead of col; these are equivalent.

murders %>% ggplot(aes(population, total,label= abb)) +
  geom_label()

##ANSWER:

murders %>% ggplot(aes(population, total,label= abb)) +
  geom_label(color = blue)