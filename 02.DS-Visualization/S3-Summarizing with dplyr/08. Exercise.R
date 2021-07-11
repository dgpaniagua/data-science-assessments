##STATEMENT:

library(dplyr)
library(NHANES)
data(NHANES)

##ANSWER

NHANES %>%
  filter(AgeDecade==" 40-49", Gender == "male") %>%
  group_by(Race1) %>%
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE)) %>%
  arrange(average)