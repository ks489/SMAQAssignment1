library(ggplot2)
library(foreign)
nasa <- read.arff("D:\\Projects\\Other\\SoftwareQualityMeasurementAssignment1\\nasa93.arff")
#Set the font size to a large font to make the plots more readable
theme_set(theme_gray(base_size = 18))
#Visualise the KLOC versus effort as a scatter plot
qplot(data=nasa,x=equivphyskloc,y=act_effort,size=I(3))
#Add a line representing the linear regression line to the data
qplot(data=nasa,x=equivphyskloc,y=act_effort,size=I(3))+ geom_smooth(method = "lm", se = FALSE)
#Calculate the linear model
fit <- lm(nasa$act_effort~nasa$equivphyskloc)
#Print out the coefficients of the linear model
summary(fit)
#Make your own function, called EffortEstimation, assuming x is the LOC we supply,
#and that we hard code the cost per LOC as 12.
EffortEstimation <- function(x) {12 * (x)}
#Plot the function we have produced
ggplot(data.frame(x=c(0,250000)), aes(x=x)) + stat_function(fun = EffortEstimation)
