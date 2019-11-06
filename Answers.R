a <- read.csv(file.choose) 
#select iris.csv

#QUESTION 1#
head_homemade<-function(x,y){
  return(x[1:y,])
}
#usage: head_homemade(file, number of rows)
head_homemade(a,3)


#QUESTION 2#
#PRINTS LAST 2 ROWS OF LAST 2 COLUMNS
a[149:150,4:5]

#GETS NUMBER OF OBSERVATIONS FOR EACH SPECIES#
count(a$Species=="setosa")
count(a$Species=="virginica")
count(a$Species=="versicolor")

#GETS ROWS WITH SEPAL WIDTH > 3.5
a[a$Sepal.Width>3.5,]

#CREATES SETOSA.CSV
write.csv(a[1:50,], file = "setosa.csv")

#GETS MEAN/MIN/MAX VIRGINICA PETAL LENGTH
mean(a[101:150,]$Petal.Length)
min(a[101:150,]$Petal.Length)
max(a[101:150,]$Petal.Length)

