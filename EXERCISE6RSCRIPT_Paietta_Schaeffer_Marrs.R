#QUESTION ONE
#defining code that gives you first n lines of any file
a<- iris #any file
b<- 10L #number of lines you want it to output
head(a, n=b)
#ouputs the first 10 lines of the file along with column headers

#QUESTION TWO
#PART A
#printing last 2 lines with last 2 columns
irislasttwo<-iris[,4:5]
tail(irislasttwo, n=2)

#PART B
#number of observations for each species included in the data set
setosa<-iris[iris$Species=="setosa",]
virginica<-iris[iris$Species=="virginica",]
versicolor<-iris[iris$Species=="versicolor",]
x1<-nrow(setosa)
x2<-nrow(virginica)
x3<-nrow(versicolor)
Observation_Number=c(x1,x2,x3)
Species=c("setosa", "virginica", "versicolor")
data.frame(Species,Observation_Number)


#PART C
#get rows with sepal width >3.5
bigsepal<-iris[iris$Sepal.Width>3.5,]
bigsepal

#PART D
#get only setosa and save that to a new csv file
setosa<-iris[iris$Species=="setosa",]
setosa
write.csv(setosa, file="setosa.csv")

#PART E
#get mean, min, max of Petal.Length for observations from virginica
virginica<-iris[iris$Species=="virginica",]
virginica
min(virginica$Petal.Length)
max(virginica$Petal.Length)
mean(virginica$Petal.Length)