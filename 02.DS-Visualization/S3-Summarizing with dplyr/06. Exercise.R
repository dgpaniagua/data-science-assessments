##STATEMENT:

library(dplyr)
library(NHANES)
data(NHANES)
  

##ANSWER

NHANES %>%
  filter(Gender == "male") %>%
  group_by(AgeDecade) %>%
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))