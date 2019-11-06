#Question 1: Write R code that replicates the functionality of the head function we used in Unix.
#Code will return first four lines of wages.csv file
wages <- read.csv("~/Desktop/biocomp-shell/Biocomp_exercise06/wages.csv")
linesreturned <- 4
head(wages,linesreturned)


#Question 2: 
iris <- read.csv("~/Desktop/biocomp-shell/Biocomp_exercise06/iris.csv")

#Last two rows in last two columns
iris[c(149,150),c(4,5)]

#Number of observations for each species
#Compiled in dataframe called SpeciesObs
sumsetosa <- sum(iris$Species=="setosa")
sumversicolor <- sum(iris$Species=="versicolor")
sumvirginica <- sum(iris$Species=="virginica")
SpeciesObs<-data.frame("SpeciesName"= c("setosa", "versicolor", "virginica"), "Observations"=c(sumsetosa, sumversicolor, sumvirginica)) 

#Rows with SepalWidth>3.5
iris[iris$Sepal.Width>3.5,]

#Write data for species setosa to comma delmited file called setosa.csv 
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa, file="setosa.csv")

#Calculate mean, max, and min for species virginica
virginica <- iris[iris$Species=="virginica",]
meanvirginica <- mean(virginica$Petal.Length)
maxvirginica <- max(virginica$Petal.Length)
minvirginica <- min(virginica$Petal.Length)
