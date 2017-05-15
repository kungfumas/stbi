install.packages("RTextTools")
install.packages("e1071")
install.packages("wordcloud")
install.packages("fpc")
install.packages("cluster")
library(tm)
library(ggplot2)
library(wordcloud)
library(plyr)
library(RTextTools)
library(e1071)
#referensi https://rstudio-pubs-static.s3.amazonaws.com/31867_8236987cf0a8444e962ccd2aec46d9c3.html
cname <- file.path("/resources/data/teks")   
cname   
dir(cname)  
docs <- Corpus(DirSource(cname))   

summary(docs)
inspect(docs[2])
docs <- tm_map(docs, removePunctuation)  
docs <- tm_map(docs, removeNumbers)  
docs <- tm_map(docs, tolower)  
docs <- tm_map(docs, removeWords, c("dapat", "yang","adalah","untuk","dan"))  

dtm <- DocumentTermMatrix(docs)   
dtm   
tdm <- TermDocumentMatrix(docs)   
tdm   

freq <- colSums(as.matrix(dtm))   
length(freq) 

m <- as.matrix(dtm)   
dim(m)   
write.csv(m, file="dtm.csv")  
dtms <- removeSparseTerms(dtm, 0.1) # This makes a matrix that is 10% empty space, maximum.   
inspect(dtms)
ord <- order(freq) 
freq[head(ord)]  
findFreqTerms(dtm, lowfreq=10) 
library(ggplot2)   
wf <- data.frame(word=names(freq), freq=freq)   
head(wf)
p <- ggplot(subset(wf, freq>50), aes(word, freq))    
p <- p + geom_bar(stat="identity")   
p <- p + theme(axis.text.x=element_text(angle=45, hjust=1))   
p   
library(wordcloud) 
set.seed(142)   
wordcloud(names(freq), freq, min.freq=5)  
set.seed(142)   
wordcloud(names(freq), freq, min.freq=2, scale=c(5, .1), colors=brewer.pal(6, "Dark2"))
library(cluster)   
##dtmss <- removeSparseTerms(dtm, 0.00001) # This makes a matrix that is only 15% empty space, maximum.   
##inspect(dtmss)

d <- dist(t(dtms), method="euclidian")   
fit <- hclust(d=d, method="ward")   
fit   
plot(fit, hang=-1)   
library(fpc)   
library(cluster) 
d <- dist(t(dtm), method="euclidian")   
kfit <- kmeans(d, 5)   
clusplot(as.matrix(d), kfit$cluster, color=T, shade=T, labels=2, lines=0)   

pamCluster <- pam(d, 3)
clusplot(as.matrix(d), pamCluster$cluster, color=T, shade=T, labels=3, lines=0)
si <- silhouette(pamCluster)
plot(si) # silhouette plot
