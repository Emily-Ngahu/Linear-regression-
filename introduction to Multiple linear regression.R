install.packages("ISLR2")
library (ISLR2)
head(Boston)
Multimodel <- lm(medv~lstat + age , data = Boston)
summary(Multimodel)
#using all variables
allmodel<- lm(medv ~ ., data = Boston)
summary(allmodel)
#compute variance inflation factors 
install.packages("car")
library (car)
vif (allmodel)
#Model omitting some variables
lm.fit1 <- lm(medv ~. - age , data = Boston)
summary(lm.fit1)
#you can also update the earlier model 
lm.fit1 <- update (allmodel , ~ . - age)
summary(lm.fit1)
#interaction terms 
summary (lm(medv ~lstat * age , data = Boston))
#Non-linear Transformations of the Predictors
lm.fit2 <- lm(medv ~lstat + I(lstat^2))
summary(lm.fit2)
#analysis of variance 
#generally anova tells us how the regression equation accounts for variability in the response variable 
#in this case we rae using anova to compare the two models 
lm.fit <- lm(medv ~ lstat)
anova (lm.fit , lm.fit2)

par (mfrow = c(2, 2))
plot (lm.fit2)
#higher polynomial models - Have an improvement to the model fit 
lm.fit5 <- lm(medv~ poly (lstat , 5))
summary (lm.fit5)





