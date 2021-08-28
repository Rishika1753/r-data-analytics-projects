x<-c(1,2,3,4,5)
y<-c(2,5,4,8,6)
relation <- lm(y~x)
print(relation)       #display coefficients for linear model
plot(y,x,col = "blue",main = "linear regression line",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "x",ylab = "y")
x2<-x^2
quadratic.model <-lm(y~x + x2)
print(quadratic.model)    #display coefficients for quadratic model
predictedcounts <- predict(quadratic.model,list(x2=x^2))
plot(x, y, pch=16, xlab = "x", ylab = "y", cex.lab = 1.3, col = "blue",main="Quadratic Regression line")
lines(x, predictedcounts, col = "darkgreen")

