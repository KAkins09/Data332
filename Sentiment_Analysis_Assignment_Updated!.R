library(textdata)
library(readr)
library(dplyr)
library(stringr)
library(tidytext)
library(stringr)
library(tidyr)
library(tokenizers)
library(tidyverse)
library(syuzhet)

Consumer_Complaints <- read_csv("~/Data332_Rstudio/Consumer_Complaints.csv")
View(Consumer_Complaints)


filled_compliants <- Consumer_Complaints%>%
  drop_na(`Consumer complaint narrative`)

##STATE 
filled_complaints_State <- Consumer_Complaints%>%
  drop_na(`Consumer complaint narrative`)%>%
drop_na(State)

  State_convert<-tibble(text = str_to_lower(filled_complaints_State$`Consumer complaint narrative`)(filled_complaints_State$State))

  get_sentiments('bing')

  ##THIS IS CODE FOR CONVERSION
narrative_convert<-tibble(text = str_to_lower(filled_compliants$`Consumer complaint narrative`,filled_complaints_State$State))


##THIS IS CODE FOR UNNEST
bing_words <- narrative_convert%>% unnest_tokens(output = word, input = text)%>%
  left_join(get_sentiments('bing'))%>%
               count(word,sentiment, sort = TRUE)


state_words<-State_convert%>% unnest_tokens(output = word, input = text)%>%
  left_join(get_sentiments('bing'))%>%
  count(word,sentiment, sort = TRUE)

state_states<-filled_complaints_State%>% select(State)

