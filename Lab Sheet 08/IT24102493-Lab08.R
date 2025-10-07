# Setting the directory
setwd("C:\\Users\\Sanjeewa\\Desktop\\PS")

#Importing the data set
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#Q1
#population mean and population standard deviation of the laptop bag weights
popmn <-mean(Weight.kg.)
print(popmn)

popvar <-var(Weight.kg.)
print(popvar)

popsd<- sqrt(popvar)
print(popsd)


#Q2
#Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation
samples <-c()
n <- c()
for(i in 1:25){
  s <-sample(Weight.kg.,6 , replace=TRUE)
  samples <- cbind(samples,s)
  n <-c(n,paste('s',i))
}
colnames(samples)=n
s.means <-apply(samples,2,mean)
s.vars <- apply(samples,2,var)

samplemean <-mean(s.means)
print(samplemean)

samplevars <-var(s.means)
print(samplevars)

samplesd <- sqrt(samplevars)
print(samplesd)

#Q3
#Comparng the population sd and sample sd
popmn
samplemean

#Comparing the popuation sd and sample sd
popsd
samplesd
