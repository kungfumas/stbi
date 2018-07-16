install.packages("quanteda") 
library(readtext)
require(stringi)

library(tm)
require(quanteda)
require(quanteda)
library(NLP)
library(tm)
library(SnowballC)
library(topicmodels)
library(LDAvis)
library(ldatuning)
library(mallet)
library(ggplot2)

library(readtext)
require(stringi)

library(tm)
require(quanteda)

library(wordcloud)
library(RColorBrewer)
setwd("G:/")
DATA_DIR <- system.file("/", package = "readtext")
##stopwordind <-readtext(paste0(DATA_DIR, "eriku/topikmodel/stopword.txt"))
xx<- scan("G:/eriku/topikmodel/stopword.txt", what="", sep="\n")
##stopwordind$text
###stopword <- c("dari","ini","untuk","sebagaimana","yang","dengan","dimaksud","dan","danatau","atau","pasal","ayat","pada","oleh","tentang","dalam");

txts <-readtext(paste0(DATA_DIR, "datauu4/*.pdf"))

txts$doc_id[1:97]
txts$text[1]
write.csv(txts$doc_id[1:97],file=paste("datafile.csv"))

articles.corpus <- Corpus(VectorSource(txts))


# make each letter lowercase
articles.corpus = tm_map(articles.corpus, content_transformer(tolower))
# remove punctuation
articles.corpus = tm_map(articles.corpus, removePunctuation)
#remove numbers
articles.corpus = tm_map(articles.corpus, removeNumbers);
# remove generic and custom stopwords
stopword = c(xx,"the","and","per","hari","satu","dua","tiga","empat","puluh","ratus", "best","dari","ini","untuk","sebagaimana","yang","dengan","dimaksud","dan","danatau","atau","pasal","ayat","pada","oleh","tentang","dalam");
articles.corpus = tm_map(articles.corpus, removeWords, stopword)
articles.corpus = tm_map(articles.corpus, removeWords, xx)

#articles.corpus <- tm_map(articles.corpus, stemDocument);
articleTdm = TermDocumentMatrix(articles.corpus, control = list(minWordLength = 3));

m <- as.matrix(articleTdm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 50,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

findFreqTerms(articleTdm, lowfreq = 150)
barplot(d[1:25,]$freq, las = 2, names.arg = d[1:25,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

findAssocs(articleTdm, terms = "gubernur", corlimit = 0.8)
##################
articleDtm = DocumentTermMatrix(articles.corpus, control = list(minWordLength = 3));
###############
DTM_test = DocumentTermMatrix(articles.corpus, control = list(minWordLength = 3))

m <- as.matrix(DTM_test)
v <- sort(colSums(m),decreasing=TRUE)
words <- names(v)
d <- data.frame(word=words, freq=v)
wordcloud(d$word,d$freq,min.freq=50)

plot(tdm, corThreshold = 0.2, weighting = TRUE)
## End(Not run)

#########


articleDtm2 <- removeSparseTerms(articleDtm, sparse=0.98)
articleDtm
 vocab<-inspect(articleDtm2[1:1,])
#dim(vocab)
k = 10;
SEED = 1234;
article.lda <- LDA(articleDtm2, k, method="Gibbs", control=list(seed = SEED))
lda.topics <- as.matrix(topics(article.lda,10))
lda.topics
lda.terms <- terms(article.lda,10)
lda.terms
lda.topics <- as.matrix(terms(article.lda,10))
lda.topics
topics(article.lda,1)

#######################
##Set parameters for Gibbs sampling
burnin <- 4000
iter <- 2000
thin <- 500
seed <-list(2003,5,63,100001,765)
nstart <- 5
best <- TRUE
#Number of topics
k <- 10
#Run LDA using Gibbs sampling
ldaOut <-LDA(articleDtm2,k, method="Gibbs", control=list(nstart=nstart, seed = seed, best=best, burnin = burnin, iter = iter, thin=thin))

#write out results
#docs to topics
ldaOut.topics <- as.matrix(topics(ldaOut))
write.csv(ldaOut.topics,file=paste("LDAGibbsbb",k,"DocsToTopics.csv"))

#top 6 terms in each topic
ldaOut.terms <- as.matrix(terms(ldaOut,10))
dim(ldaOut.terms)
write.csv(ldaOut.terms,file=paste("LDAGibbsbb",k,"TopicsToTerms.csv"))


#probabilities associated with each topic assignment
topicProbabilities <- as.data.frame(ldaOut@gamma)
write.csv(topicProbabilities,file=paste("LDAGibbsbbb",k,"TopicProbabilities.csv"))
 

#Find relative importance of top 2 topics
topic1ToTopic2 <- lapply(1:nrow(dtm),function(x)
sort(topicProbabilities[x,])[k]/sort(topicProbabilities[x,])[k-1])


#Find relative importance of second and third most important topics
topic2ToTopic3 <- lapply(1:nrow(dtm),function(x)
sort(topicProbabilities[x,])[k-1]/sort(topicProbabilities[x,])[k-2])
 

#write to file
write.csv(topic1ToTopic2,file=paste("LDAGibbsbb",k,"Topic1ToTopic2.csv"))
write.csv(topic2ToTopic3,file=paste("LDAGibbsbb",k,"Topic2ToTopic3.csv"))
###################




listfile<-txts$doc_id
besar <-length(listfile)

###sample_text_a2 <- stri_replace_all_regex(txts, '\n', "")
sample_text_a2 <- stri_split_fixed(txts, '\n')
for (i in 1: besar)
{
d<-lapply(sample_text_a2[i], write, file=listfile[i], append=T)
}



sink(listfile[i])
cat(listfile[i])
sink()


sample_text_a2 <- unlist(stri_split_fixed(txts, '\n'), use.names = TRUE)
corpus_txts <- corpus(sample_text_a2)

corpus_txts
sample_text_b2 <- stri_paste(txts, collapse = '\n')
show(sample_text_a2[1])
for (i in 1: besar)
{
d<-lapply(sample_text_a2[i], write, file=listfile[i], append=T)
sink(listfile[i])
cat(sample_text_a2[i])
sink()
}
file.show("outfile.txt")