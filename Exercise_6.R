#Part 1
####Part 2####

#Load iris.csv
iris=read.csv("~/Biocomp/Biocomp_exercise06/iris.csv")
#Get dimmensions of iris
dim(iris)

#Gets the last 2 columns of the last 2 rows
iris[149:150,4:5]

#Gets the number of observations of each species
setosa=iris[iris$Species=="setosa",]
nrow(setosa)
versicolor=iris[iris$Species=="versicolor",]
nrow(versicolor)
virginica=iris[iris$Species=="virginica",]
nrow(virginica)

#Gets rows with Sepal.Width>3.5
width=iris[iris$Sepal.Width>3.5,]
width

#Write data for setosa to setosa.csv
write.csv(setosa, file="setosa.csv")

#Calculating mean, minimum, and maximum of Petal.Length of virginica
#Mean
mean(virginica$Petal.Length)
#Minimum
min(virginica$Petal.Length)
#Maximum
max(virginica$Petal.Length)
