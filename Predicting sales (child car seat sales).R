install.packages("ISLR2")
library (ISLR2)
head(Carseats)
?Carseats
lm.fit <- lm(Sales ~. + Income:Advertising + Price:Age ,data = Carseats)
summary(lm.fit)
?contrasts
#contrasts()returns the coding that R uses for the dummy variables 
attach (Carseats)
contrasts (ShelveLoc)
