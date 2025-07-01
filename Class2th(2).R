library(ggplot2)
library(reshape2)

dim(tips)
table(tips)
names(tips)

ggplot(tips, aes(x = total_bill, y = tip, colour = sex)) +
  geom_point()

ggplot(tips, aes(x = total_bill, y = tip, shape = sex)) +
  geom_point()

ggplot(tips, aes(x = total_bill, y = tip, size = size)) +
  geom_point()

ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_point() +
  geom_text(aes(label = sex), hjust = "right", vjust = "bottom",
            check_overlap = TRUE)
ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_text(aes(label = sex), hjust = "right", vjust = "bottom")

ggplot(tips, aes(tip)) + 
  geom_histogram()

ggplot(tips, aes(day)) +
  geom_bar()

ggplot(tips, aes(tip, fill = day)) + #fill을 추가하면 요일 별 색이 달라진다다
  geom_histogram() +
  facet_wrap(~day, ncol = 1)

# "total_bill"  "tip"        "sex"        "smoker"     "day"        "time"       "size"    
# 흡연 여부에 따라 tip의 분포가 어떻게 달라지는지 히스토그램
# 점심/저녁에 따른 막대그래프프
ggplot(tips, aes(tip, fill = smoker)) +
  geom_histogram() +
  facet_wrap(~smoker, ncol = 1)

ggplot(tips,aes(time)) +
  geom_bar()

ggplot(tips, aes(tip)) +
  geom_density()

ggplot(tips, aes(tip, colour = day))+ # 요일별 다른 density
  geom_density()

time_data = data.frame(group = c("smoker", "non-smoker"),
                       value = c(93,151))

ggplot(time_data, aes(x = "", y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  geom_text(aes(label = value), position = position_stack(vjust = 0.5))


# 성별 비율을 파이차트로 나타내기
# 흡연과 비흡연자의 따른 분포 나타내기
table(tips$sex)
sex_data = data.frame(group = c("male", "female"),
                      value = c(157, 87))

ggplot(sex_data, aes(x = "", y = value, fill = group))+
  geom_col() + # 막대형태로 표현해줌
  coord_polar(theta = "y") + # 막대 그래프 -> 원형 그래프
  geom_text(aes(label = value), position = position_stack(vjust = 0.5))

ggplot(tips, aes(tip, colour = smoker)) +
  geom_density()

covid_data = read.csv("C:\\Users\\guddn\\Desktop\\R_Language\\corona_data.csv")
head(covid_data)
covid_data$Date = as.Date(covid_data$Date) # 오른쪽 data를 왼쪽 데이터로 덮어씌운다
class(covid_data$Date)

plot(covid_data$Date, covid_data$new_case, type = "l") # plot(x축, y축, type)
plot(covid_data$Date, covid_data$new_case, type = "b")
?plot

ggplot(covid_data, aes(Date, new_case,
                       group = Season,
                       colour = Season)) +
  geom_line()

