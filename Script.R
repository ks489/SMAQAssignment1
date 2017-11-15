library(ggplot2)
library(foreign)

EffortEstimation <- function(x) {12 * (x)}
ggplot(data.frame(x=c(0,250000)), aes(x=x)) + stat_function(fun = EffortEstimation)

EffortEstimation <- function(x) {12 * (x) + 100000}
ggplot(data.frame(x=c(0,250000)), aes(x=x)) + stat_function(fun = EffortEstimation)

EffortEstimation <- function(x) {5 * (x^1.1) + 100000}
ggplot(data.frame(x=c(0,250000)), aes(x=x)) + stat_function(fun = EffortEstimation)

nasa <- read.arff("D:\\Projects\\Other\\SoftwareQualityMeasurementAssignment1\\nasa93.arff.txt")
#Set the font size to a large font to make the plots more readable
theme_set(theme_gray(base_size = 18))
#Visualise the KLOC versus effort as a scatter plot
qplot(data=nasa,x=kloc,y=effort,size=I(3))
#Add a line representing the linear regression line to the data
qplot(data=nasa,x=kloc,y=effort,size=I(3))+ geom_smooth(method = "lm", se = FALSE)
#Calculate the linear model
fit <- lm(nasa$effort~nasa$kloc)
#Print out the coefficients of the linear model
summary(fit)

EffortEstimation <- function(x) {5.0585 * (10.05^1.0497) + 148.7982}
ggplot(data.frame(x=c(0,10000)), aes(x=x)) + stat_function(fun = EffortEstimation)

#This is my final estima
EffortEstimation <- function(x) {5.0585 * (x^1.0497) + 148.7982}
ggplot(data.frame(x=c(0,10000)), aes(x=x)) + stat_function(fun = EffortEstimation)

EffortEstimation <- function(x) {12 * (x)}
#Plot the function we have produced
ggplot(data.frame(x=c(0,250000)), aes(x=x)) + stat_function(fun = EffortEstimation)


qplot(data=nasa,x=kloc,y=defects,size=I(3))
#Add a line representing the linear regression line to the data
qplot(data=nasa,x=kloc,y=defects,size=I(3))+ geom_smooth(method = "lm", se = FALSE)
#Calculate the linear model
fit <- lm(nasa$defects~nasa$kloc)
#Print out the coefficients of the linear model
summary(fit)


