x1 = 5
x1
x2 = 4
x2
x1+x2
x1*x2
x1/x2

a1 = c(1, 2, 3, 4)
a1
sum(a1)
?sum

a2 = 1:4
a2
a3 = seq(1,4)
a3
?seq

seq(1,4, by = 0.1)
seq(1,4, length.out = 4)
seq(1,4, length.out = 8)
a2 = seq(5,8)
a2
a1+a2
a3=c(5,6,7,8,9)
a1+a3
a1+a3
x = c("A", "B", "C")
x
class(x)
y = c("1", "2", "3")
y
class(y)
sum(y)
y1 = as.numeric(y)
y1
sum(y1)
my_data = data.frame(country_name = c("South Korea", "South Korea"),
                    iso = rep("KR", 2),
                    x = c(1000,2000))
my_data
netflix_data = read.csv("C:\\Users\\USER\\Downloads\\Netflix_K_data.csv")
netflix_data
View(netflix_data)
head(netflix_data)
tail(netflix_data)
dim(netflix_data)

netflix_data$category
netflix_data[,4]
netflix_data[1,]
netflix_data[1,4]
netflix_data[1:10,]
hospital_data = netflix_data[netflix_data$show_title == "Hospital Playlist",]
plot(as.Date(hospital_data$week),hospital_data$weekly_rank)

table(netflix_data$category)
table(netflix_data$country_name)
summary(netflix_data)

#2018년에 출시된 차량 가격의 평균을 구하시오. mean()
#2017년에 출시된 차량 중 차량 색상이 흰색인 차의 수를 구하시오.
car_data = read.csv("C:\\Users\\USER\\Downloads\\car_prices.csv")
car_data
netflix_data[,3]

head(car_data)
car_2018 = car_data[car_data$year == 2018,]
mean(car_2018$price)

car_2017 = car_data[car_data$year == 2017,]
car_2017
table(car_2017$color)
