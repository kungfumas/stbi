library(e1071)
#library(RTextTools)
library(readxl)
library(tm)
library(dplyr)
library(caret)
# Library for parallel processing
library(doMC)
registerDoMC(cores=detectCores())  # Use all available core
library(tm)
library(readxl)

library(doMC)
registerDoMC(cores=detectCores())  # Use all available cores
library("SnowballC")
library("wordcloud")
library("RColorBrewer")



setwd("G:/datamerek")
# Load the data from the csv file
dataDirectory <- "G:/datamerek/" # put your own folder here
#data <- read.csv("G:/datamerek/datamerek.csv", sep=",", header = TRUE)

df <- read_excel("G:/datamerek/Data.xlsx")
stopwordID <- "G:/datamerek/stoplist.txt"
cStopwordID<-readLines(stopwordID)
#####################


glimpse(df)

set.seed(1234)
df <- df[sample(nrow(df)), ]
df <- df[sample(nrow(df)), ]
glimpse(df)

df$class <- as.factor(df$label)
corpus <- Corpus(VectorSource(df$text))
# Inspect the corpus
corpus
## <<VCorpus>>
## Metadata:  corpus specific: 0, document level (indexed): 0
## Content:  documents: 2000
inspect(corpus[1:3])
## <<VCorpus>>
## Metadata:  corpus specific: 0, document level (indexed): 0
## Content:  documents: 3
## 
## [[1]]
## <<PlainTextDocument>>
## Metadata:  7
## Content:  chars: 2471
## 
## [[2]]
## <<PlainTextDocument>>
## Metadata:  7
## Content:  chars: 4198
## 
## [[3]]
## <<PlainTextDocument>>
## Metadata:  7
## Content:  chars: 1272

# Use dplyr's  %>% (pipe) utility to do this neatly.

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords,cStopwordID)
corpus.clean <- tm_map(corpus, stripWhitespace)

#############

dtm <- DocumentTermMatrix(corpus.clean)


# Frequency
freq <- sort(colSums(as.matrix(dtm)), decreasing=TRUE)
wf <- data.frame(word=names(freq), freq=freq)
# Plot Histogram
subset(wf, freq>50)    %>%
  ggplot(aes(word, freq)) +
  geom_bar(stat="identity", fill="darkred", colour="darkgreen") +
  theme(axis.text.x=element_text(angle=45, hjust=1))

##################
tdm <-TermDocumentMatrix(corpus.clean)

m <- as.matrix(tdm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)
wordcloud(words = d$word, freq = d$freq, min.freq = 2,
          max.words=100, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))



############

df.train <- df[1:40,]
df.test <- df[41:50,]

dtm.train <- dtm[1:40,]
dtm.test <- dtm[41:50,]
inspect(dtm.train)
inspect(dtm.test)

corpus.clean.train <- corpus.clean[1:40]
corpus.clean.test <- corpus.clean[41:50]

fivefreq <- findFreqTerms(dtm.train, 2)
length((fivefreq))
## [1] 12144

# Use only 5 most frequent words (fivefreq) to build the DTM

dtm.train.nb <- DocumentTermMatrix(corpus.clean.train, control=list(dictionary = fivefreq))

dim(dtm.train.nb)
dtm.train.nb
## [1]  1500 12144

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

##################
library(class)
mat.df <- as.data.frame(data.matrix(dtm), stringsAsfactors = FALSE)
mat.df <- cbind(mat.df, df$label, row.names = NULL)
colnames(mat.df)[ncol(mat.df)] <- "type"


train <- sample(nrow(mat.df), ceiling(nrow(mat.df) * .60))
test <- (1:nrow(mat.df))[- train]
train<-mat.df[1:40,]
test <-mat.df[41:40,]
cl <- mat.df[,"type"]
modeldata <- mat.df[,!colnames(mat.df) %in% "type"]
knn.pred <- knn(modeldata[train, ], modeldata[test, ], cl[train])
knn.pred
conf.mat <- table("Predictions" = knn.pred, Actual = cl[test])
conf.mat
(accuracy <- sum(diag(conf.mat))/length(test) * 100)





###############

#################
# prep the data

dtm.train.nb <- as.data.frame(as.matrix(dtm.train.nb))
dtm.test.nb <- as.data.frame(as.matrix(dtm.test.nb))

sms_train1 <- cbind(cat=factor(df.train$label), dtm.train.nb)
sms_test1 <- cbind(cat=factor(df.test$label), dtm.test.nb)

# sms_train1[,-1]<-apply(sms_train1[,-1],MARGIN=2,as.numeric)
# sms_test1<-apply(sms_test, MARGIN=2, as.numeric)

sms_train1<-as.data.frame(sms_train1)
sms_test1<-as.data.frame(sms_test1)

# model specification
fit1 <- svm(cat~., data=sms_train1)

# print a summary
fit1

fit1.pred <- predict(fit1, na.omit(sms_test1))
fit1.pred

fit1.perf <- table(na.omit(sms_test1$cat), fit1.pred, dnn=c("Actual", "Predicted"))

fit1.perf

confMatrix1 <- confusionMatrix(fit1.pred, sms_test1$cat)
confMatrix1

conf.mat <- confusionMatrix(pred, df.test$class)

conf.mat
