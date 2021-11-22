library(rvest)
library(tidyverse)
library(stringr)
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
tab <- read_html(url) %>% html_nodes("table")
polls <- tab[[6]] %>% html_table(fill = TRUE)

#####Q4

names(polls) <- c("dates", "remain", "leave", "undecided", "lead", "samplesize", "pollster", "poll_type", "notes")
!is.na(str_extract(polls$remain, "%"))

polls <- polls[!is.na(str_extract(polls$remain, "%")),] #select rows with % sign on remain column

#####Q6
str_replace(polls$undecided, "N/A", "0")
