library(dslabs)
library(lubridate)
options(digits = 3)    # 3 significant digits

#####Q3
data(brexit_polls)
brexit_polls %>% filter(month(startdate) == 4) %>% nrow()

brexit_polls %>% filter(round_date(enddate, unit = "week") == "2016-06-12")# %>% nrow()

round_date(brexit_polls$enddate, unit = "week")

brexit_polls$enddate

#####Q4
brexit_polls %>% group_by(weekdays(enddate)) %>% summarize(count = n()) %>%
  arrange(desc(count))


#####Q5
data(movielens)
movielens %>% group_by(year(as_datetime(timestamp))) %>% summarize(count = n()) %>%
  arrange(desc(count))

movielens %>% group_by(hour(as_datetime(timestamp))) %>% summarize(count = n()) %>%
  arrange(desc(count))
