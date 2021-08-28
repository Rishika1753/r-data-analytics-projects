dataset <- read.csv("Salaries.csv")
View(dataset)
#Maximum salary
max(dataset$salary)
#Minimum salary
min(dataset$salary)
#Average salary
mean(dataset$salary)
avgsal<-mean(dataset$salary)
#Average salary of Professor only
retval <- subset( dataset, rank == "Prof")
print(retval)
profavg<-mean(retval$salary)
print(profavg)
#Average salary of Associate Professor only
val<-subset(dataset,rank=="AssocProf")
print(val)
assocprofavg<-mean(val$salary)
print(assocprofavg)
#Average salary of female Professor
femval <- subset( dataset, rank == "Prof"& sex=="Female")
print(femval)
femprofavg<-mean(femval$salary)
print(femprofavg)
#Average salary of female Associate Professor
femval1<- subset( dataset, rank == "AssocProf"& sex=="Female")
print(femval1)
femAssocprofavg<-mean(femval1$salary)
print(femAssocprofavg)