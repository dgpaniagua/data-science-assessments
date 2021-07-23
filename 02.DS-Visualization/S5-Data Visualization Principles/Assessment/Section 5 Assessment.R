options(digits = 3)    # report 3 significant digits
library(tidyverse)
library(titanic)

titanic <- titanic_train %>%
  select(Survived, Pclass, Sex, Age, SibSp, Parch, Fare) %>%
  mutate(Survived = factor(Survived),
         Pclass = factor(Pclass),
         Sex = factor(Sex))

####### Q2 #######

titanic %>% ggplot(aes(Age, color=Sex)) + geom_density()# + facet_grid(Sex ~ .)

sum(titanic$Sex=="female") > sum(titanic$Sex=="male")

sum(titanic$Sex=="male" & titanic$Age==40 & !is.na(titanic$Age)) > sum(titanic$Sex=="female" & titanic$Age==40 & !is.na(titanic$Age))

sum(titanic$Sex=="male" & (titanic$Age>=18 & titanic$Age<=35) & !is.na(titanic$Age))/sum(titanic$Sex=="male" & !is.na(titanic$Age))
sum(titanic$Sex=="female" & (titanic$Age>=18 & titanic$Age<=35) & !is.na(titanic$Age))/sum(titanic$Sex=="female" & !is.na(titanic$Age))

sum(titanic$Sex=="male" & titanic$Age<17 & !is.na(titanic$Age))/sum(titanic$Sex=="male" & !is.na(titanic$Age))
sum(titanic$Sex=="female" & titanic$Age<17 & !is.na(titanic$Age))/sum(titanic$Sex=="female" & !is.na(titanic$Age))

####### Q3 #######
params <- titanic %>%
  filter(!is.na(Age)) %>%
  summarize(mean = mean(Age), sd = sd(Age))

titanic %>% filter(!is.na(Age)) %>% ggplot(aes(sample=Age)) + geom_qq(dparams = params) + geom_abline()

####### Q4 #######

titanic %>% ggplot(aes(Survived)) + geom_bar()
titanic %>% ggplot(aes(Survived, fill=Sex)) + geom_bar(position = position_dodge())

####### Q5 #######

titanic %>% ggplot(aes(Age, fill=Survived)) + geom_density(alpha=0.2)

####### Q6 #######

titanic %>% filter(Fare!=0) %>% ggplot(aes(Survived, Fare)) + 
  geom_boxplot() + 
  scale_y_continuous(trans = "log2") +
  geom_jitter(width = 0.1, alpha = 0.2)

####### Q7 #######

titanic %>% ggplot(aes(Pclass, fill=Survived)) + geom_bar()
titanic %>% ggplot(aes(Pclass, fill=Survived)) + geom_bar(position = position_fill())
titanic %>% ggplot(aes(Survived, fill=Pclass)) + geom_bar(position = position_fill())

####### Q8 #######

titanic %>% ggplot(aes(Age, fill=Survived, y = ..count..)) + 
  geom_density(alpha=0.2) +
  facet_grid(Sex ~ Pclass)











