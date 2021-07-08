library(dslabs)
library(dplyr)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

###Q1
ind <- which(heights$height > mean(heights$height))
length(ind)

###Q2
ind <- which(heights$height > mean(heights$height) & heights$sex == "Female")
length(ind)

###Q3
mean(heights$sex == "Female")

###Q4a
min <- heights$height[which.min(heights$height)]

###Q4b
ind_min <- match(min, heights$height)

###Q4c
heights$sex[ind_min]

###Q5a
max <- heights$height[which.max(heights$height)]

###Q5b
heights$height[which.max(heights$height)]
heights$height[which.min(heights$height)]
x <- 50:82

###Q5c
sum(!(x %in% heights$height))

###Q6
heights2 <- mutate(heights, ht_cm=height * 2.54)

###Q6a
heights2$ht_cm[18]

###Q6b
mean(heights2$ht_cm)

###Q7a
sum(heights2$sex=="Female")

###Q7b
mean(heights2$ht_cm[which(heights2$sex=="Female")])

###Q8
library(dslabs)
data(olive)
head(olive)

plot(olive$palmitic, olive$palmitoleic)

###Q9
hist(olive$eicosenoic)

###Q10
boxplot(palmitic~region, olive)
