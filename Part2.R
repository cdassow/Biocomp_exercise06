#Exercise 06 Number 2 Grace Petrosini
iris = read.csv("./Biocomp_exercise06/iris.csv",
             header = TRUE,
             sep = ",")
finalTwo <- iris[,4:5]
print("These are the last two rows in the last two columns")
tail(finalTwo, n=2L)

print("this is the number of observations for each species in this data set")
as.data.frame(table(iris$Species))

print("These observations have a Sepal.Width>3.5")
iris[which(iris[,2]>3.5),]

print("Writing the data for the species setosa to a csv")
setosa <- iris[iris$Species == "setosa",]
write.csv(setosa, file = "./Biocomp_exercise06/setosa.csv",)

print("mean, minimum, and maximum for the Petal Length of the species virginica")
virginica <- iris[iris$Species == "virginica",]
print("minimum")
min(virginica$Petal.Length)
print("maximum")
max(virginica$Petal.Length)
print("mean")
mean(virginica$Petal.Length)

