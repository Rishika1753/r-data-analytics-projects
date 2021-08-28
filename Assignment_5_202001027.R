#Q1
e_prob <- function(n)
{
  unique_prob <- 1-(choose(365,n)*factorial(n))/(365^n)
  return(unique_prob)
  
}
n<-c(2:100)
plot(n,e_prob(n))
for(i in 2:100)
{
  if(e_prob(i)>0.5)
  {
    print(i)
    break
  }
}

#Q2
n=c(0:10)
f1<-function(n)    #payoff function
{
  x<-(n*n)-7*n
  return(x)
}

f2<-function(n)    #pmf function
{
  y<-choose(10,n)*(0.4)^(10-n)*(0.6)^n
  return(y)
}
f3<-function(k)    #expectation function
{
  s<-0
  for(i in k)
  {
    s<-s+(f1(1)*f2(i))
  }
  return (s)
}
plot(n,f1(n))
print(f3(n))
a<-sample(0:10,10)
print(f3(a))