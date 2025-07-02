netflix_data = read.csv("C:\\Users\\PC2\\Downloads\\Netflix_subscription_fee.csv")
head(netflix_data)
dim(netflix_data)

# which를 사용하여 해당 위치를 찾을 수 있다.
which(netflix_data$Country_code=="kr") 
netflix_data[54,]

mean(netflix_data$Cost_Basic) # 평균
mean(netflix_data$Cost_Premium)
median(netflix_data$Cost_Basic) # 중앙값
median(netflix_data$Cost_Premium)

var(netflix_data$Cost_Basic) # 분산
sd(netflix_data$Cost_Basic) # 표준편차

summary(netflix_data)

cost_data = netflix_data[,6:8]
cost_data
# 각 변수들마다의 평균이나 중앙값 구하려면 apply()함수 사용
apply(cost_data, 2, mean)
apply(cost_data, 2, median)

# trim은 전체 자료수 * trim값 해
mean(netflix_data$Cost_Basic, trim = 0.1) 

# quantile은 사분위수 범위(probs는 특정 백분위수 지정 가능)
quantile(netflix_data$Cost_Basic, probs = 0.25)
quantile(netflix_data$Cost_Basic, probs = 0.5)
median(netflix_data$Cost_Basic)
quantile(netflix_data$Cost_Basic, probs = 0.75)

hist(netflix_data$Cost_Basic)
# 상자그림 = boxplot
box_basic = boxplot(netflix_data$Cost_Basic)
boxplot(cost_data)
box_basic

# 프리미엄 가격의 80%백분위수를 구하여라
quantile(netflix_data$Cost_Premium, probs = 0.8)

# 프리미엄 가격의 히스토그램과 상자그림을 그려라
par(mfrow = c(1,2)) # 두 그래프를 한번에 보이는 함수수
hist(netflix_data$Cost_Premium)
boxplot(netflix_data$Cost_Premium)

# 베이직, 스탠다드 , 프리미엄 각 가격의 표준편차를 구하고 퍼저있는 정도를 그려라
apply(cost_data, 2, var)
apply(cost_data, 2, sd)

library(ggplot2)
ggplot(netflix_data, aes(x="", y = Cost_Basic)) +
  geom_boxplot(outlier.colour = "red", # outlier = 이상점
               outlier.shape = 6,
               outlier.size = 2) +
  coord_flip() # 그림을 90도 돌려줌

ggplot(netflix_data, aes(x="", y = Cost_Premium))+
  geom_boxplot(outlier.colour = "blue",
               outlier.size = 1) 

par(mfrow = c(1,1))
plot(netflix_data$Cost_Basic,
     pch = 19, ylim = c(0,15)) # pch는 동그라미 점을 채워줌
text(netflix_data$Cost_Basic,
     label = netflix_data$Country_code,
     col = "red", pos = 3,
     cex = 0.8)
    

