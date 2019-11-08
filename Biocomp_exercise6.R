#Problem 1
x<-read.csv(file.choose())
y<-10
head(x, n=y)
#Problem 2
iris<-read.csv(file.choose()) #Open iris.csv to R
dim(iris)
iris[149:150,4:5] #Get last two columns and last two rows
sum(iris[,5]=='setosa') #Count number of setosa
sum(iris[,5]=='versicolor') #Count number of versicolor
sum(iris[,5]=='virginica') #Count number of virginica
which((iris[,2])>3.5) #Get rows with Sepal.Width greater than 3.5
write.csv(iris[1:50,], file="setosa.csv") #File containing info of setosa sp.
mean(iris[101:150,3]) #Mean of virginica petal length
min(iris[101:150,3]) #Min value of virginica petal length
max(iris[101:150,3]) #Max value of virginica petal length