#Problem 1
my.head = function(filename, n){
  output = read.csv(filename, header=TRUE, sep=",")
  return(output[1:n,])
}

#Problem 2
mydata <- read.csv("iris.csv", header=TRUE, sep=",")
#print the last 2 rows in the last two columns
tail(mydata,2)[,4:5]
#number of observations for each species in the data set
summary(mydata$Species)
#get rows with Sepal width > 3.5
mydata[mydata$Sepal.Width>3.5,]
#write setosa to another file
write.csv(mydata[mydata$Species=="setosa",], "setosa.csv")
#find descriptive statistics for Petal.Length for species virginica
summary(mydata[mydata$Species=="virginica",'Petal.Length'])
