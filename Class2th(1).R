netflix_data = read.csv("C:\\Users\\USER\\Downloads\\NetflixOriginals.csv")
head(netflix_data)

dim(netflix_data)
summary(netflix_data)
hist(netflix_data$Runtime)
hist(netflix_data$Runtime, prob = T)
stem(netflix_data$Runtime)

l_table = table(netflix_data$Language)
barplot(l_table)
pie(l_table)

#Netflix_data에서 장르가 Romantic Comedy이거나 Documentary인 영화의 IMDB SCORE의 히스토그램을 그려보자

netflix_D = netflix_data[netflix_data$Genre == "Documentary",]
netflix_D
hist(netflix_D$IMDB.Score)

netflix_RC = netflix_data[netflix_data$Genre == "Romantic comedy",]
netflix_RC
hist(netflix_RC$IMDB.Score)

netflix_O = netflix_data[netflix_data$Genre == "Documentary" | netflix_data$Genre == "Romantic comedy",]
hist(netflix_DR$IMDB.Score)

netflix_A = netflix_data[netflix_data$Genre == "Documentary" & netflix_data$Genre == "Romantic comedy",]
table(netflix_O$Genre)

table(netflix_O$Genre)
dim(netflix_A)