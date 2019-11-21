#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import pandas as pd
import numpy as np
from PIL import Image
from wordcloud import WordCloud, STOPWORDS
from sklearn import preprocessing
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.metrics import accuracy_score
import pandas as pd
import seaborn as sns
from sklearn.neighbors import KNeighborsClassifier


# In[ ]:


import nltk
nltk.download('punkt')


# In[ ]:


import pandas as pd
import csv
import pymysql
con = pymysql.connect(db="lagu", user="root", passwd="",host="localhost",port=3306,autocommit=True)
print("database connected")


# In[ ]:


frame = pd.read_sql("select * from lirik", con)
# impor word_tokenize dari modul nltk
from nltk.tokenize import word_tokenize 
for i, kalimat in enumerate (frame['teks']):
   stop = nltk.tokenize.word_tokenize(kalimat)
print(stop)


# In[ ]:


#Stopwordremoval adalah proses pembuangan term yang tidak memiliki arti atau tidak relevan
import pandas as pd
# import StemmerFactory class

from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
# create stemmer

factory = StopWordRemoverFactory()
stopword = factory.create_stop_word_remover()
 
# stemming process
frame = pd.read_sql("select * from lirik", con)
for i, kalimat in enumerate (frame['teks']):
   stop = stopword.remove(kalimat)
print(i,stop + '\n')


# In[ ]:


# Stemming untuk membuat term yang ada pada tabel filtering menjadi kata dasar, dengan menghilankan semua imbuhan 
# yang ada pada kata
# import StemmerFactory class
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
# create stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()
# stemming process
# stemming process
frame = pd.read_sql("select * from lirik", con)
for i, kalimat in enumerate (frame['teks']):
   stop = stemmer.stem(kalimat)
print(i,stop + '\n')


# In[ ]:


#CountVectorizer berfungsi untuk menghitung frekuensi kata dalam dokumen,
#dapat diubah fitur teks menjadi sebuah representasi vector.
import pandas as pd
 
from sklearn.feature_extraction.text import TfidfTransformer
from sklearn.feature_extraction.text import CountVectorizer
 
# this is a very toy example, do not try this at home unless you want to understand the usage differences
docs=["Jangan kau tanya Mengapa memerah mataku Coba coba jawab sendiri Mengapa air hujan turun bumi Jauh kapal berlayar Singgah dermaga sebentar Tidak seperti kamu Pergi keseberang tak ingat pulang Bukan materi obat dihati Aku inginkan kasih sayang Pandai dirimu meyimpan Jangan kau anggap mataku buta Burung terbang tak lupa pulang Ingat sangkar anak istri"
     ]


# In[ ]:


#instantiate CountVectorizer() untuk menghitung jumlah kata (term frequency) 
cv=CountVectorizer()
 
# this steps generates word counts for the words in your docs
word_count_vector=cv.fit_transform(docs)


# In[ ]:


word_count_vector.shape


# In[ ]:


#menghitung idf
tfidf_transformer=TfidfTransformer(smooth_idf=True,use_idf=True)
tfidf_transformer.fit(word_count_vector)


# In[ ]:


# print idf values
df_idf = pd.DataFrame(tfidf_transformer.idf_, index=cv.get_feature_names(),columns=["idf_weights"])
 
# sort ascending (urutan naik)
df_idf.sort_values(by=['idf_weights'])


# In[ ]:


# count matrix
count_vector=cv.transform(docs)
 
# tf-idf scores
tf_idf_vector=tfidf_transformer.transform(count_vector)


# In[ ]:


feature_names = cv.get_feature_names()
 
#get tfidf vector for first document
first_document_vector=tf_idf_vector[0]
 
#print the scores
df = pd.DataFrame(first_document_vector.T.todense(), index=feature_names, columns=["tfidf"])
df.sort_values(by=["tfidf"],ascending=False)


# In[ ]:


text=open("lagu.csv").read()


# In[ ]:


text


# In[ ]:


mask=np.array(Image.open("python.png"))
wc=WordCloud(max_words=100,mask=mask, background_color='white')
wc.generate(text)
plt.figure(figsize=(50,50))
plt.axis("off")
plt.imshow(wc, interpolation="bilinear")


# In[ ]:


frame = pd.read_sql("select * from lirik", con)
print (frame['teks'])


# In[ ]:


frame.info()


# In[ ]:


#Kelima, menentukan variabel independen dari data sehingga, menghapus variabel dependen yaitu Result of Treatment.
# Variabel independen
X = frame.drop("label", axis = 1)
X.head()


# In[ ]:


#data Dinormalisasi
min_max_scaler = preprocessing.MinMaxScaler()
#Normalisasi data X
scaled = min_max_scaler.fit_transform(x)
#dibuat data frame
frame_x_scaled = pd.DataFrame(x_scaled)


# In[ ]:


from sklearn.neighbors import KNeighborsClassifier


# In[ ]:


# Mengaktifkan fungsi klasifikasi
klasifikasi = KNeighborsClassifier(n_neighbors=5)


# In[ ]:


#Spliting Data Train dan Data Test
#Dataset yang ada akan dibagi menjadi 2 bagian yaitu x test dan x train untuk variabel independen, 
#y test dan y train untuk variabel dependen.
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 123)


# In[ ]:


#Scaling Data : Menyamakan skala data dengan menggunakan fungsi StandarScaler dari package scikit-learn. 
#Teknik Standard Scaler berguna ketika membandingkan data yang sesuai dengan unit yang berbeda. Data Train dan Test
from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
scaler.fit(x_train)
x_train = scaler.transform(x_train)
x_test = scaler.transform(x_test)


# In[ ]:


from sklearn.neighbors import KNeighborsClassifier


# In[ ]:


# Mengaktifkan fungsi klasifikasi
klasifikasi = KNeighborsClassifier(n_neighbors=5)


# In[ ]:


# Memasukkan data training pada fungsi klasifikasi
klasifikasi.fit(x_train, y_train)


# In[ ]:


# Menentukan hasil prediksi dari x_test
y_pred = klasifikasi.predict(x_test)
y_pred


# In[ ]:


# Menentukan probabilitas hasil prediksi
klasifikasi.predict_proba(x_test)


# In[ ]:


from sklearn.metrics import classification_report, confusion_matrix


# In[ ]:


print(confusion_matrix(y_test, y_pred))


# In[ ]:


print(classification_report(y_test, y_pred))


# In[ ]:


from sklearn.metrics import accuracy_score
accuracy= accuracy_score(y_test, y_pred)
accuracy

