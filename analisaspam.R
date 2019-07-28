library(e1071)
library(RTextTools)
library(readxl)
library(tm)
library(RTextTools)
library(e1071)
library(dplyr)
library(caret)
library(readxl)
df <- read_excel("G:/datamerek/dataspam.xlsx")
stopwordID <- "G:/datamerek/stoplist.txt"
cStopwordID<-readLines(stopwordID)



glimpse(df)
df$class <- as.factor(df$label)
corpus <- Corpus(VectorSource(df$text))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords,cStopwordID)
corpus.clean <- tm_map(corpus, stripWhitespace)

dtm <- DocumentTermMatrix(corpus.clean)
#######

# Frequency
freq <- sort(colSums(as.matrix(dtm)), decreasing=TRUE)
wf <- data.frame(word=names(freq), freq=freq)
# Plot Histogram
subset(wf, freq>20)    %>%
  ggplot(aes(word, freq)) +
  geom_bar(stat="identity", fill="darkred", colour="darkgreen") +
  theme(axis.text.x=element_text(angle=45, hjust=1))
# Word Cloud
library(wordcloud)
set.seed(100)
wordcloud(names(freq), freq, min.freq=5, colors=brewer.pal(6, "Dark2"))

#####
show(dtm)
df.train <- df[1:175,]
df.test <- df[176:208,]

dtm.train <- dtm[1:175,]
dtm.test <- dtm[176:208,]

corpus.clean.train <- corpus.clean[1:175]
corpus.clean.test <- corpus.clean[176:208]


fivefreq <- findFreqTerms(dtm.train, 5)
length((fivefreq))

dtm.train.nb <- DocumentTermMatrix(corpus.clean.train, control=list(dictionary = fivefreq))

dim(dtm.train.nb)
dtm.train.nb


dtm.test.nb <- DocumentTermMatrix(corpus.clean.test, control=list(dictionary = fivefreq))

dim(dtm.train.nb)
## [1]  1500 12144

# Function to convert the word frequencies to yes (presence) and no (absence) labels
convert_count <- function(x) {
  y <- ifelse(x > 0, 1,0)
  y <- factor(y, levels=c(0,1), labels=c("No", "Yes"))
  y
}
# Apply the convert_count function to get final training and testing DTMs
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
