#problem #1
#loading iris.csv file into R
setwd("~/Desktop/r-novice-inflammation/")
Irisfile <- read.csv(file="Biocomp_exercise06/iris.csv", header= TRUE)
#assinging a variable for the number of lines we want from the head function
L <- 8
#using the head function to obtain the first 8 lines from the iris.csv file
head(Irisfile,n=L)


#problem #2
#data from iris.csv was loaded in the previos problem and will continue to be worked with
#1 print the last 2 rows in the last 2 columns to the R termianl 
#check the dimensions of the file 
dim(Irisfile)
#obtain the last 2 rows and last 2 columns
Irisfile[149:150,4:5]

#2 get the number of observations for each species included in the data set 
unique(Irisfile$Species)
#previous command shows three different species, 1. setosa, 2. versicolor, 3. virginica
# the following three commands will give the number of rows and columns for each species.
#Each dimension says 50 rows and 5 columns, which indicates that there are 50 observations for each species 
dim(Irisfile[Irisfile$Species=="setosa",])
dim(Irisfile[Irisfile$Species=="versicolor",])
dim(Irisfile[Irisfile$Species=="virginica",])

#3 get rows with Sepal.Width > 3.5
Irisfile[Irisfile$Sepal.Width> 3.5,]


#4 write the data for the species setosa to a comma-deliminted file names 'setosa.csv'
setosa <- Irisfile[Irisfile$Species=="setosa",]
write.csv(setosa,file = "setosa.csv",row.names = FALSE)
#confirmed comma deliminted when opened in terminal

#5 calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicastats <- Irisfile[Irisfile$Species=="virginica",]
mean(virginicastats$Petal.Length)
max(virginicastats$Petal.Length)
min(virginicastats$Petal.Length)
#mean=5.552 max=6.9 min=4.5
