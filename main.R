library(doBy)
library(dplyr)
library(foreign)
library(ggplot2)
library(knitr)
library(lmtest)
library(readstata13)
library(sandwich)
library(stargazer)
library(AER)
library(gdata)
library(openintro)
library(tidyverse)
library(readxl)

cse=function(reg)
  
  #Code for 3 seasons of players with contract year in 2019 free agency
  #2018-2019 is last year of contract
  
  
X2017_2018 <- read_csv("2017.csv")
View(X2017_2018)

X2018_2019 <- read_csv("2018.csv")
View(X2018_2019)

X2019_2020 <- read_csv("2019.csv")
View(X2019_2020)


#summary of statistics
summary(X2017_2018)
summary(X2018_2019)
summary(X2019_2020)

library(ggplot2)


#MP vs BPM all seasons

ggplot(X2017_2018, aes(x=MP, y=BPM)) + 
  geom_point()+  
  labs(title = "2017-2018 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="red")

ggplot(X2018_2019, aes(x=MP, y=BPM)) + 
  geom_point() +  
  labs(title = "2018-2019 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="red")

ggplot(X2019_2020, aes(x=MP, y=BPM)) + 
  geom_point() +  labs(title = "2019-2020 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="red")



# MP vs USG
ggplot(X2017_2018, aes(x=MP, y=WS_48)) + 
  geom_point()+
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="green")

ggplot(X2018_2019, aes(x=MP, y=WS_48)) + 
  geom_point() +
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="green")

ggplot(X2019_2020, aes(x=MP, y=WS_48)) + 
  geom_point() +
  geom_smooth(method=lm, se=TRUE,fullrange=TRUE,color="green")


# Age vs PER
ggplot(X2017_2018, aes(x=Age, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")

ggplot(X2018_2019, aes(x=Age, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")

ggplot(X2019_2020, aes(x=Age, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")

#Position vs PER

ggplot(X2017_2018, aes(x=Position, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")

ggplot(X2018_2019, aes(x=Position, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")

ggplot(X2019_2020, aes(x=Position, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="red")


# Height vs PER

ggplot(X2017_2018, aes(x=Height, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2018_2019, aes(x=Height, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2019_2020, aes(x=Height, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

# Usage vs PER

ggplot(X2017_2018, aes(x=USG, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2018_2019, aes(x=USG, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2019_2020, aes(x=USG, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

#TS vs PER

ggplot(X2017_2018, aes(x=TS, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2018_2019, aes(x=TS, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2019_2020, aes(x=TS, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

#WS_48 vs PER

ggplot(X2017_2018, aes(x=WS_48, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2018_2019, aes(x=WS_48, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2019_2020, aes(x=WS_48, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

#bpm vs per

ggplot(X2017_2018, aes(x=BPM, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2018_2019, aes(x=BPM, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

ggplot(X2019_2020, aes(x=BPM, y=PER)) +
  geom_point()+
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE,color="orange")

#MP vs PER all seasons

ggplot(X2017_2018, aes(x=MP, y=PER)) + 
  geom_point()+  
  labs(title = "2017-2018 NBA Season", x = "Minutes Played", y = "Player Efficiency Rating") +
  geom_smooth(method=lm)

ggplot(X2018_2019, aes(x=MP, y=PER)) + 
  geom_point() + 
  labs(title = "2018-2019 NBA Season", x = "Minutes Played", y = "Player Efficiency Rating") +
  geom_smooth(method=lm)

ggplot(X2019_2020, aes(x=MP, y=PER)) + 
  geom_point() +  
  labs(title = "2019-2020 NBA Season", x = "Minutes Played", y = "Player Efficiency Rating") +
  geom_smooth(method=lm)

 

#regression of all variables on all seasons 
reg1=lm(PER ~ Position + Age + Height + USG,data = X2017_2018)
reg2=lm(PER ~ Position + Age + Height + USG, data = X2018_2019)
reg3=lm(PER ~ Position + Age + Height + USG, data = X2019_2020)
library(stargazer)

stargazer(X2017_2018, X2018_2019, X2019_2020, reg1, reg2, reg3, type = "text", digits=3, title="Regression Results")

data_2017 <- X2017_2018[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2017 <- cor(data_2017,use = "complete.obs")
round(c2017,2)

data_2018 <- X2018_2019[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2018 <- cor(data_2017,use = "complete.obs")
round(c2018,2)

data_2019 <- X2019_2020[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2019 <- cor(data_2017,use = "complete.obs")
round(c2019,2)


