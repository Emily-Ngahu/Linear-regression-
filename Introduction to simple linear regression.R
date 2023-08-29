install.packages("ISLR2")
library (ISLR2)
head(Boston)
?Boston
#simple linear regression model with medv as the response and lstat as the predictor
Smodel <- lm(medv~lstat , data = Boston)
summary(Smodel)
#instead of using data=data,you can use attach()fxn 
attach (Boston)
lm.fit <- lm(medv~lstat)
summary(lm.fit)
lm.fit
#use summary()for more detailed info
#We can use the names() function in order to find out what other pieces of information are stored in the model 
names (lm.fit)
#In order to obtain a confidence interval for the coefficient estimates, we can use the confint() command 
confint (lm.fit)
plot (lstat , medv)
abline (lm.fit)
#lwd to increase width of line plotted 
abline (lm.fit , lwd = 3)
abline (lm.fit , lwd = 3, col = " red ")
plot (lstat , medv , col = " red ")
#different plotting symbols use pch 
plot (lstat , medv , pch = 20)
plot (lstat , medv , pch = "+")
plot (1:20, 1:20, pch = 1:20)
par (mfrow = c(2, 2))
plot (lm.fit)
#compute the residuals from a linear regression fit using the residuals() function
plot ( predict (lm.fit), residuals (lm.fit))
plot ( predict (lm.fit), rstudent (lm.fit))
plot ( hatvalues (lm.fit))
which.max ( hatvalues (lm.fit))






