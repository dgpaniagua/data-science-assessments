library(tidyverse)
library(gutenbergr)
library(tidytext)
options(digits = 3)

names(gutenberg_metadata)
gutenberg_metadata$has_text

#Q6
gutenberg_metadata$gutenberg_id[str_detect(gutenberg_metadata$title, "Pride and Prejudice")]


#Q07
gutenberg_works(title=="Pride and Prejudice")

#Q08
text <- gutenberg_download(1342, mirror="http://gutenberg.readingroo.ms/")
words <- text %>% unnest_tokens(word, text)

#Q09
words %>% filter(!word %in% stop_words$word ) %>% nrow()
words <- words %>% filter(!word %in% stop_words$word)

#Q10
words <- words[words$word %>% str_extract("\\d") %>% is.na(),]

#Q11
words %>% group_by(word) %>% summarize(count=n()) %>% filter(count>100) %>% arrange(desc(count))

#Q12
afinn <- get_sentiments("afinn")

afinn_sentiments <- words %>% inner_join(afinn)
sum(afinn_sentiments$value > 0) / nrow(afinn_sentiments)
sum(afinn_sentiments$value == 4)
