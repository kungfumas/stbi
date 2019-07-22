library(gdata)
library(wordcloud)
library(tm)
library(quanteda)
library(syuzhet)
library(SnowballC)
library(tidytext)
library(devtools)
library(caret)
library(text2vec)
library(glmnet)
library(e1071)
library(klaR)
library(pROC)
library(data.table)
library(magrittr)
library(qdap)
library(readr)
library(qdapTools)
library(qdapRegex)
library(randomcoloR)
library(class)
library(readxl)

library(e1071)
library(RTextTools)
library(readxl)
library(tm)
library(RTextTools)
library(e1071)
library(dplyr)
library(caret)
df <- read_excel("G:/datamerek/dataapp.xlsx")
df$class <- as.factor(df$class)
table(df$class)
plot(df$class, col = c("blue", "yellow"))
corpus <- Corpus(VectorSource(df$deskripsi))
corpus.clean <- corpus %>%
  tm_map(content_transformer(tolower)) %>% 
  tm_map(removePunctuation) %>%
  tm_map(removeNumbers) %>%
  tm_map(removeWords, stopwords(kind="en")) %>%
  tm_map(stripWhitespace)
dtm <- DocumentTermMatrix(corpus.clean)
show(dtm)
set.seed(333)

df <- df[sample(nrow(df)), ]

glimpse(df)

df$class <- as.factor(df$class)
corpus <- Corpus(VectorSource(df$deskripsi))
dtm <- DocumentTermMatrix(corpus.clean)



df.train <- df[1:150,]
df.test <- df[151:200,]

dtm.train <- dtm[1:150,]
dtm.test <- dtm[151:200,]
inspect(dtm.train)
inspect(dtm.test)
