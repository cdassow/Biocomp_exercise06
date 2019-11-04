#working with iris.csv
iris = read.csv("./Biocomp_exercise06/iris.csv",
             header = TRUE,
             sep = ",")
finalTwo <- iris[,4:5]
tail(finalTwo, n=2L)
nrow(iris)
iris[which(iris[,2]>3.5),]
setosa <- iris[iris$Species == "setosa",]
write.csv(setosa, file = "./Biocomp_exercise06/setosa.csv",)
virginica <- iris[iris$Species == "virginica",]
aggregate(virginica$Petal.Length)
