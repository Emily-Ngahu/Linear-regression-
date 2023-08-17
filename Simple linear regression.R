#The line of best fit passes through the mean of x and y 
#The line has least square distance from the data points(add the square of the residuals)
#Residual = Yactual - Ypredicted 
#set.seed function 
set.seed(2)
rnorm(20)
set.seed(5)
rnorm(20)
set.seed(4)
rnorm(20)
set.seed(2)
rnorm(20)
#import dataset 
sales <- read.csv("C:/Users/ADMIN/Documents/ice cream data.csv")
sales
#Do exploratory data analysis 
head(sales)
tail(sales)
summary(sales)
plot(sales)
#splitting data into training  and test data 
set.seed(2)
install.packages('caTools')
library(caTools)
split<-sample.split(sales$Revenue, SplitRatio = 0.7)
split
train<- subset(sales,split="TRUE")
train 
test<- subset(sales,split="FALSE")
test
#create the model 
model<- lm(Revenue~.,data= train )
model
summary(model)
#error is the deviation of the observed values from the expected value Yi - E(Yi)
#residual is the deviation of the observed values from the fitted values Yactual - Y predicted 
#intercept - the value of y when x is zero 
#So when the temperature is zero,the revenue is 44.8313 
#21.4436 is the numerical relationship between the two variables(practical significance )
#standard error - estimated variability in a coefficient due to sampling variability 
#tvalue - estimate divided by standard error 
#Pvalue(with n-2 degrees of freedom )- how statistically significant each of the estimate is 
#residual standard error - ho well or poorly the model does at predicting y value sin the data 
#multiple Rsquared - the percentage of variation in the response variable that is explained by the variation in the exlanatory variable 
#Adjusted Rsquared - takes into account how many explanatory variables are in the model 
#Fvalue measures the significance o fthe overall model
#prediction 
Pred<- predict(model,test)
Pred
#comparing predicted vs actual(error)
plot(test$Revenue,type ="l",lty = 1.8,col ="red")
lines(Pred,type = "l",col="blue")
plot(Pred,type ="l",lty = 1.8,col ="blue")
#finding accuracy 
rmse<-sqrt(mean((Pred - sales$Revenue)^2))
rmse
#Lower RMSE:indicates that the predicted values are closer to the actual values on average. In other words, the model's predictions are more accurate.

#Higher RMSE: implies that the predicted values have a larger average deviation from the actual values. This indicates poorer prediction accuracy.
#our Rsmeis low hence the predicted values are closer to the actual values 