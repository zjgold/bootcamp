2+5

a=5
a

b<-5
b

a<--2
a

a<- 5
a< -2

d=c(3,4,7);d
x=c();x

e=seq(from=1, to=3, by=0.5); e

f=rep(NA,6);f

length(d)

max(d)

min(d)

mean(d)

g<-c(2,6,7,4,5,2,9,3,6,4,3)
sort(g,decreasing=TRUE)

unique(g)

duplicated(g)

a<-c(1,2,3,NA,6)
is.na(a)

mean(a)

mean(a, na.rm=TRUE)

sum(is.na(a))
#number of missing values
summary(a)

d[2]

d==3

d!=3

which(d==4)

d<-seq(1,10,2)
d[-2]
d[d >= 2]

a<-seq(1,100,2)
a
#vector of positive odd integers less than 100

a[a<=80]
a[a>=60]

var(a)

mat<-matrix(10:15, nrow=3, ncol=2); mat

mat+mat

t(mat)

dim(mat)

mat%*%t(mat)

mat[1,1]

mat[1,]

mat[,2]

mat[c(1,3),2]

mat1<-rbind(d,d); mat1
mat1<-cbind(d,d); mat1

h=matrix(c(NA ,3,1,7,-8,NA), nrow=3,ncol =2, byrow=TRUE); h

is.na(h)
sum(is.na(h))
which(is.na(h))

na.omit(h)

matrixa<-matrix(c(2,1,3,3,6,5,7,2,1), nrow=3, ncol=3)
matrixa

matrixb<-matrix(c(3,0,5,2,7,8,9,8,2), nrow=3, ncol=3)
matrixb

matrixa%*%matrixb

help(function.name)

stock.data<-read.table(" http :/ /www. google.com/ finance / historical ?q= NASDAQ : AAPL &output =csv ", header=TRUE , sep=",")

getwd()
setwd("~/Desktop")
library(ape)
library(MASS)
data(MASS)
data(Animals)
attach(Animals)
names(Animals)
?Animals
cor(Animals[,1:2])


plot(x=Animals$brain, y=Animals$body, main= "Body Weight vs Brain Weight", xlab="brain weight in lg", ylab="body weight in kg")

hist(Animals$body, main="Distribution of Body Weights", xlab="Body Weight KG")

boxplot(Animals$brain, main="Boxplot of Brain Weights")

pairs(Animals)
