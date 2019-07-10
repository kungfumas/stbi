import tweepy
import nltk
from tweepy import OAuthHandler
from nltk.tokenize import word_tokenize
from nltk.tokenize import TweetTokenizer
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory



# create stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()

tknzr = TweetTokenizer()
consumer_key = 'xxxxxx'
consumer_secret = 'xxxxxx'
access_token = 'xxxxx'
access_secret = 'xxxxx'

auth = OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)

api = tweepy.API(auth)
for status in tweepy.Cursor(api.home_timeline).items(50):

# Process a single status

  # print(status.text)
   case_folding =status.text.lower()
  # print(case_folding)
   output   = stemmer.stem(case_folding)
   print(output)
 
   #tokens=tknzr.tokenize(output)
   #print(tokens)
   
   file1 = open("MyFile3.txt","a") 
   file1.write('"'+output+'",')
   file1.close()
