#Q1
thames=346
savern=354
abs(thames-savern)
a<-exp(savern)
a
b<-exp(thames)
b
temp=c(a,b)    #calculates how many times is savern longer than thames
diff(temp)

#Q2
multiplier<-function(x,y){
  val=x*y*pi;
  return(val)}
multiplier(12.8,19.2) 

#Q3
rm(a,b,savern,thames,temp,multiplier) #removes all objects from global environment

