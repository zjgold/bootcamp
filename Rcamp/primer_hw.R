# This will calculate the mean of 10 random standard normal variables.
mean(rnorm(10))
#[1] 0.6076425

# B.1 
#Help commands
'?'(mean)
help(mean)

#search commands
help.search("mean")
apropos("mean")

#package and function search
RSiteSearch("violin")
RSiteSearch("violin", restrict= c("functions")

#function help
help(RSiteSearch)

#B.2
#assignment
a<-2+3
a
#[1] 5

b<-a+a
b
#[1] 10

a+a; a+b
#[1] 10
#[1] 15

#B.3 Data Structures

#B.3.1 Vectors
Y <- c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)
#or
Y = c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)

#Sequences
1:4
#[1] 1 2 3 4
4:1
#[1] 4 3 2 1
-1:3
#[1] -1 0 1 2 3
-(1:3)
#[1] -1 -2 -3
seq(from=1,to=3, by=0.2)
# [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
seq(1, 3, by = 0.2)
#[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
seq(1, 3, length = 7)
#[1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667 3.000000
rep(1,3)
#[1] 1 1 1
rep(1:3, 2)
#[1] 1 2 3 1 2 3
rep(1:3, each = 2)
#[1] 1 1 2 2 3 3

#B.3.2 Getting info about vectors
sum(Y)
#[1] 105.4

mean(Y)
#[1] 10.54

max(Y)
#[1] 11.4

length(Y)
#[1] 10

summary(Y)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#8.30   10.72   11.00   10.54   11.18   11.40 

#Logicals
Names<-c("Sarah","Yunlan")
Names
#[1] "Sarah"  "Yunlan"

b<-c(TRUE,FALSE)
#b<-c(TRUE,FALSE)

class(Y)
#[1] "numeric"

class(b)
#[1] "logical"

#comparing vectors
Y>10
#[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

Y>mean(Y)
#[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

Y==11
#[1] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE

Y != 11
#[1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

#Vector Algebra
a<-1:3
b<-4:6
a+b
#[1] 5 7 9

a*b
#[1]  4 10 18

a/b
#[1] 0.25 0.40 0.50

a+1
#[1] 2 3 4
a*2
#[1] 2 4 6
1/a
#[1] 1.0000 0.5000 0.3333

a*1:2
#[1] 1 4 3
#Warning message:
#In a * 1:2 : longer object length is not a multiple of shorter object length

a * c(1, 2, 1)
#[1] 1 4 3

1:4 *1:2
#[1] 1 4 3 8

1:4 * c(1,2,1,2)
#[1] 1 4 3 8

#B3.3.3
Y[1]
#[1] 8.3

Y[1:3]
#[1]  8.3  8.6 10.7

Y>mean(Y)
# [1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

Y[Y>mean(Y)]
#1] 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4

a<- c(5,3,6, NA)
a
#[1]  5  3  6 NA

is.na(a)
#[1] FALSE FALSE FALSE  TRUE

!is.na(a)
#[1] TRUE TRUE TRUE FALSE

a[!is.na(a)]
#[1] 5 3 6

na.exclude(a)
#[1] 5 3 6

attr(,"na.action")
#[1] 4
attr(,"class")
#[1] "exclude"

mean(a)
#[1] NA
mean(a,na.rm=TRUE)
#[1] 4.667

d<-na.exclude(a)
mean(d)
#[1] 4.667

#B 3.4
matrix(letters[1:4], ncol = 2)
#     [,1] [,2]
#[1,] "a"  "c" 
#[2,] "b"  "d" 

M<- matrix(1:4, nrow=2)
M
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4

M2 <- matrix(1:4, nrow = 2, byrow = TRUE)
M2
#     [,1] [,2]
#[1,]   1    2
#[2,]   3    4

I<-diag(1,nrow=2)
I
#     [,1] [,2]
#[1,]    1    0
#[2,]    0    1

Minv <-solve(M)
M %*% Minv
#     [,1] [,2]
#[1,]    1    0
#[2,]    0    1

#Extraction in matrices
M[1,2]
#[1] 3
M[1,1:2]
#[1] 1 3
M[,2]
[1] 3 4
M[, ]
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4

#B.3.5
dat <- data.frame(species = c("S.altissima", "S.rugosa", "E.graminifolia", "A. pilosus"), treatment = factor(c("Control","Water", "Control", "Water")), height = c(1.1,0.8, 0.9, 1), width = c(1, 1.7, 0.6, 0.2))

dat
#species treatment height width
#1    S.altissima   Control    1.1   1.0
#2       S.rugosa     Water    0.8   1.7
#3 E.graminifolia   Control    0.9   0.6
#4     A. pilosus     Water    1.0   0.2

dat[2,]
#   species treatment height width
#2 S.rugosa     Water    0.8   1.7

dat[3,4]
#[1] 0.6

dat[,2]=="Water"
#[1] FALSE  TRUE FALSE  TRUE

dat[dat[, 2] == "Water", ]
#     species treatment height width
#2   S.rugosa     Water    0.8   1.7
#4 A. pilosus     Water    1.0   0.2

subset(dat, treatment == "Water")
#     species treatment height width
#2   S.rugosa     Water    0.8   1.7
#4 A. pilosus     Water    1.0   0.2

#B.3.5
c("Control", "Medium", "High")
#[1] "Control" "Medium"  "High"   

rep(c("Control", "Medium", "High"), each = 3)
#[1] "Control" "Control" "Control" "Medium"  "Medium" 
#[6] "Medium"  "High"    "High"    "High"   

Treatment <- factor(rep(c("Control", "Medium", "High"), each = 3))
Treatment

#[1] Control Control Control Medium  Medium  Medium  High   
#[8] High    High   
Levels: Control High Medium

levels(Treatment)
#[1] "Control" "High"    "Medium" 

stripchart(1:9 ~ Treatment)

Treatment <- factor(rep(c("Control", "Medium", "High"), each = 3), levels = c("Control", "Medium", "High"))
levels(Treatment)
#[1] "Control" "Medium"  "High"  

stripchart(1:9 ~ Treatment)

#B.3.6 Lists
my.list <- list(My.Y = Y, b = b, Names, Weed.data = dat, My.matrix = M2, my.no = 4)
my.list

#$My.Y
#[1]  8.3  8.6 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4

#$b
#[1] 4 5 6

#[[3]]
#[1] "Sarah"  "Yunlan"

#$Weed.data
#species treatment height width
#1    S.altissima   Control    1.1   1.0
#2       S.rugosa     Water    0.8   1.7
#3 E.graminifolia   Control    0.9   0.6
#4     A. pilosus     Water    1.0   0.2

#$My.matrix
#[,1] [,2]
#[1,]    1    2
#[2,]    3    4

#$my.no
#[1] 4

my.list[["b"]]
#[1] 4 5 6

my.list[[2]]
#[1] 4 5 6

my.list$b
#[1] 4 5 6

my.list[1:2]
#$My.Y
#[1]  8.3  8.6 10.7 10.8 11.0 11.0 11.1 11.2 11.3
#[10] 11.4

#$b
#[1] 4 5 6

my.list[["b"]][1]
#[1] 4

#B.3.7 Data frames are lists
mean(dat$height)
#[1] 0.95

#B.4 Functions
help(mean)
#trim=0 is default
mean(1:4)
[1] 2.5
class(1:10)
#[1] "integer'
class(warpbreaks)
#[1] "data.frame"

summary(1:10)
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#1.00    3.25    5.50    5.50    7.75   10.00 

summary(warpbreaks)
#breaks      wool   tension
#Min.   :10.00   A:27   L:18   
#1st Qu.:18.25   B:27   M:18   
#Median :26.00          H:18   
#Mean   :28.15                 
#3rd Qu.:34.00                 
#Max.   :70.00         

summary(lm(breaks ~ wool, data = warpbreaks))
#Call:
#lm(formula = breaks ~ wool, data = warpbreaks)

#Residuals:
#  Min      1Q  Median      3Q     Max 
#-21.037  -9.259  -3.648   4.713  38.963 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)   31.037      2.501  12.410   <2e-16 ***
#  woolB         -5.778      3.537  -1.634    0.108    
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#B 4.1 

MyBogusMean <- function(x, cheat = 0.05) {
     SumOfX <- sum(x) 
     o <- length(x)  
     trueMean <- SumOfX/o  
     (1 + cheat) * trueMean}

RealSales <- c(100, 200, 300)
MyBogusMean(RealSales)

#[1] 210

MyBogusMean(RealSales, cheat = 0.1)
#[1] 220

MyBogusMean(RealSales, cheat = 0)
#[1] 200

#B.6 Itreated Actions
m <- matrix(1:10, nrow = 2)
m
#    [,1] [,2] [,3] [,4] [,5]
#[1,]    1    3    5    7    9
#[2,]    2    4    6    8   10

apply(m, MARGIN = 1, mean)
#[1] 5 6

apply(m, MARGIN = 2, sum)
#[1] 3 7 11 15 19

sapply(1:10, function(i) mean(rnorm(5)))
#[1] -0.08965875 -0.33886562  0.93075330 -0.04716976  0.08333820  0.43143162 -0.30547762  0.10842460  0.26870073
#[10]  0.39255450

gens <-10
output<- numeric (gens+1)
output[1] <-25
for (t in 1:gens) output[t + 1] <- output[t] + round(rnorm(n = 1,mean = 0, sd = 2), 0)
output
# [1] 25 27 29 28 27 26 26 27 27 27 25

#B.13 Graphics
data(trees)
attach(trees)
plot(Girth,Height)
#scatter plot of Height vs Girth

#B13.2 adding points, lines, & text to a plot
par(mar=c(5,4,3,2))
plot(Girth, Volume, type = "n", main = "My Trees")
points(Girth, Volume, type = "h", col = "lightgrey",pch = 19)
# plot of volume vs girth

hts <- (Height - min(Height))/max(Height - min(Height))
my.colors <- hcl(h = 30 + 270 * hts, alpha = 0.9)
text(Girth, Volume, Height, col = my.colors, cex = 0.5 + hts)
#tree heights and font size of text are linked to color, larger trees have darker colors

trees.sort <- trees[order(trees$Girth, trees$Height),]
matplot(trees.sort$Girth, trees.sort[, 2:3], type = "b")
text(18, 40, "Volume", col = "darkred")
text(10, 58, "Height")
#volume and height of trees plotted vs girth

quartz(, 4, 4)
par(mar = c(5, 4, 2, 4))
plot(Girth, Volume, main = "My Trees")
#plots volume vs girth with circles

par(new = TRUE)
plot(Girth, Height, axes = FALSE, bty = "n", xlab = "", ylab = "", pch = 3)
#plots height vs girth on ame graph

axis(4)
mtext("Height", side = 4, line = 3)
par(mar = c(5, 4, 2, 4))
plot(Girth, Volume, main = "My Trees")
par(new = TRUE)
plot(Girth, Height, axes = FALSE, bty = "n", xlab = "", ylab = "", pch = 3)
axis(4)
mtext("Height", side = 4, line = 3)
#added height axis

quartz(width = 5, height = 3)
#new window with specified dim

quartz(, 5, 5)
layout(matrix(c(1, 2, 3, 3), nrow = 2, byrow = TRUE))
plot(Girth, Height)
#plot of height vs girth

par(mar = c(3, 3, 1, 1), mgp = c(1.6, 0.2, 0), tcl = 0.2)
plot(Girth, Height)
#plot in the upper corner
par(mar = c(3, 3, 2, 1), mgp = c(1.6, 0.2, 0), tcl = 0.2)
plot(Girth, Height, axes = FALSE, xlim = c(8, 22))
#wide plot
axis(1, tcl = -0.3)
axis(2, tick = F)
rug(Height, side = 2, col = 2)
title("A Third, Very Wide, Plot")
#title

#Creating a Graphics File
getwd()
quartz(, 4, 4)
plot(Height, Volume, main = "Tree Data")
dev.print(pdf, "MyTree.pdf")
#pdf plot of volume vs height