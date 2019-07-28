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

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, stopwords(kind = "en"))
corpus.clean <- tm_map(corpus, stripWhitespace)

dtm <- DocumentTermMatrix(corpus.clean)
show(dtm)
set.seed(333)
show(dtm)
df.train <- df[1:150,]
df.test <- df[151:200,]

dtm.train <- dtm[1:150,]
dtm.test <- dtm[151:200,]
inspect(dtm.train)
inspect(dtm.test)

corpus.clean.train <- corpus.clean[1:150]
corpus.clean.test <- corpus.clean[151:200]

fivefreq <- findFreqTerms(dtm.train, 5)

fivefreq
length((fivefreq))


dtm.train.nb <- DocumentTermMatrix(corpus.clean.train, control=list(dictionary = fivefreq))

dim(dtm.train.nb)
dtm.train.nb
## [1]  1500 12144

dtm.test.nb <- DocumentTermMatrix(corpus.clean.test, control=list(dictionary = fivefreq))

dim(dtm.train.nb)



convert_count <- function(x) {
  y <- ifelse(x > 0, 1,0)
  y <- factor(y, levels=c(0,1), labels=c("No", "Yes"))
  y
}
trainNB <- apply(dtm.train.nb, 2, convert_count)
testNB <- apply(dtm.test.nb, 2, convert_count)


# Train the classifier
system.time( classifier <- naiveBayes(trainNB, df.train$class, laplace = 1) )
# Use the NB classifier we built to make predictions on the test set.
system.time( pred <- predict(classifier, newdata=testNB) )
# Create a truth table by tabulating the predicted class labels with the actual class labels 
table("Predictions"= pred,  "Actual" = df.test$class )

# Prepare the confusion matrix
conf.mat <- confusionMatrix(pred, df.test$class)

conf.mat
