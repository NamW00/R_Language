#자료를 어떻게 그래프로 나타내는 지 

netflix_data=read.csv("C:\\Users\\PC2\\Downloads\\NetflixOriginals.csv") #csv파일 다운로드
head(netflix_data) #젤 위의 6개 보여줌
dim(netflix_data)#행과 열 차원의 크기를 알려줌
summary(netflix_data)#자료형을 파악할 수 있음
#히스토그램 그리기
hist(netflix_data$Runtime)
hist(netflix_data$Runtime,prob=T) # 수직면 상대도수
stem(netflix_data$Runtime) #줄기 잎 그래프
L_table=table(netflix_data$Language)
barplot(L_table) # 막대그래프를 그리는 명령어  
pie(L_table)#파이 차트
table(netflix_data$Genre) #자료의 빈도를 나타내줌 도수분포표를 만들어줌  



#넷플릭스데이터에서 장르가 Romatic Comedy이거나 Documentary인 영화 
t=table(netflix_data$Genre=="Romantic comedy")
D=netflix_data[netflix_data$Genre=="Documentary",]
D
hist(D$IMDB.Score)
s=netflix_data[netflix_data$Genre=="Romantic comedy",]
hist(s$IMDB.Score)




ds=netflix_data[netflix_data$Genre=="Documentary"|netflix_data$Genre=="Romentic comedy",] #두개 다 가져오기
dss=netflix_data[netflix_data$Genre=="Documentary"&netflix_data$Genre=="Rometic comedy",] #두개를 다 포함하는 값만 가져오기
table(ds$Genre)
dim(ds)



#ggplot2패키지를 활용하여 시각화 하기 install.packages("ggplot2") install.packages("reshape2")
library(ggplot2)
library(reshape2)


dim(tips)
#산전도 그리기
ggplot(tips,aes(x=total_bill,y=tip,colour=sex))+
  geom_point()

ggplot(tips,aes(x=total_-bill,y=tip,shape=sex))+
  geom_point()
ggplot(tips, aes(x=total_bill,y=tip,size=size))+
  geom_point()


#텍스트 추가
ggplot(tips,aes(x=total_bill,y=tip))+
  geom_point()+
  geom_text(aes(label=sex)
                

ggplot(tips,aes(x=total_bill,y=tip))+
  geom_point()+
  geom_text(aes(label=sex)
                        

ggplot(tips,aes(tip))+geom_histogram()


#막대그래프
ggplot(tips,aes(day))+
  geom_bar()

ggplot(tips,aes(tip))+
  geom_histogram()+
  facet_wrap(~day,ncol=1)


#흡연 여부에 따라 tip의 분포가 어ㄸ허게 달라지는지 히스토그램

ggplot(tips,aes(tip,fill=smoker))+
  geom_histogram()+
  facet_wrap(~smoker,ncol=1)

#점심 저녁에 따른 막대 그래프
ggplot(tips,aes(time))+
  geom_bar()


ggplot(tips,aes(tip))+
  geom_density


ggplot(tips,aes(tip,colour=day))+
  geom_density()


#파이차트
time_data=data.frame(group=c("smoker","non-smoker"),
                     value=c(93,151))
ggplot(time_data,aes(x="",y=value,fill=group))+
  geom_col()+
  coord_polar(theta="y")+
  geom_text(aes(label=value),position=position_stack(vjust=0.5))


#성별 비율을 파이차트로 나타내기 

table(tips$sex)

time_data=data.frame(group=c("Male","Female"),
                     value=c(157,87))



ggplot(time_data,aes(x="",y=value,fill=group))+
  geom_col()+ #막대그래프
  coord_polar(theta="y")+
  geom_text(aes(label=value),position=position_stack(vjust=0.5))


#흡연과 비흡연자에 따른 분포 나타내기

ggplot(tips,aes(tip,colour=smoker))+
  geom_density()





corona_data=read.csv("C:\\Users\\PC2\\Downloads\\corona_data.csv")
head(corona_data)


#시도표 그리기
corona_data$Date=as.Date(corona_data$Date)
class(corona_data$Date)

plot(corona_data$Date, corona_data$new_case,type="b") #타입은 여러가지
ggplot(corona_data,aes(Date,new_case, 
                       colour=Season))+
  geom_line()




