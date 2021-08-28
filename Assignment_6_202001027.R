#Q1
n <- 100
p <- 0.05
x <- rbinom(n,size=n,prob=p)
x
plot(x,rbinom(x,size=n,prob=p),main="probability mass function ")
plot(x, rbinom(x, size = n, prob = p), type="s", main = "Cumulative distribution function")

#Q2
x1<-1:100
x2<-1:100
x3<-1:100
sample(x1)
sample(x2)
sample(x3)
set.seed(3)
sample(x1, size=20, replace=FALSE)
sample(x2, size=20, replace=FALSE)
sample(x3, size=20, replace=FALSE)
df<-data.frame(s1<-sample(x1, size=20, replace=FALSE),s2<-sample(x3, size=20, replace=FALSE),s3<-sample(x3, size=20, replace=FALSE))
df
cor(df$s1,df$s2)
cor(df$s2,df$s3)
cor(df$s1,df$s3)
lm(s1 ~ s2)
plot(s1~s2)
abline(lm(s1 ~ s2))
lm(s2 ~ s3)
plot(s2~s3)
abline(lm(s2 ~ s3))
lm(s1 ~ s3)
plot(s1~s3)
abline(lm(s1 ~ s3))