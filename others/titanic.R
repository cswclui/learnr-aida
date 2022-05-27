#https://r.smartana.org/tutorials/da-sl/#section-logistic-regression
library(titanic)
library(tidyverse)
ls("package:titanic")
T<-titanic_train


str(titanic_train)
str(titanic_test)
names(titanic_train)
summary(titanic_train)

#find columns with missing values
is.na(T)
colSums(is.na(T))


#print rows with missing values
is.na(T$Age)==TRUE
T[is.na(T$Age)==TRUE,]

# compute mean of Age
mean(T$Age)
avg<-mean(T$Age, na.rm = TRUE)

#set missing values with mean of Age
T$Age[is.na(T$Age)] = mv



total_rows = count(T)
total_rows

#survival percentage
p<-table(T$Survived)
prop.table(p)


str(titanic_test)
str(titanic_train)

mean(0 == test)
