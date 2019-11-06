
## PART I: Creating a Head Function
# The file wages.csv will be processed by this example.  
fileinput <- read.csv("wages.csv")
numberlines <- 10 #Alternative number of lines can be entered as input here
filematrix <- as.matrix(fileinput)
headoutput <- filematrix[1:numberlines,]
headoutput

#*****ask if its ok to have 10 rows plus the header or if we want just the first 10 rows

## PART II: Processing Iris
#1. Print the last two rows in the last two columns
dim(iris) # Used to determine where the end of the last to columns and rows occurs.
iris[149:150,4:5]

#2. Get the number of observations for each species included in the dataset.
number_setosa <- nrow(iris[iris$Species=="setosa",])
number_versicolor <- nrow(iris[iris$Species=="versicolor",])
number_virginica <- nrow(iris[iris$Species=="virginica",])
number_setosa
number_versicolor
number_virginica
#*****check that 50 is the answer to all

#3. Get rows with Sepal.width>3.5
iris[iris$Sepal.Width>3.5,]

#4. Write the data for the species setosa to a csv file named "setosa.csv"
setosa <- iris[iris$Species=="setosa",]
write.csv(x=setosa,file="setosa.csv",)

#5. Calculate the mean, minimum, and maximum of Petal.Length for observations from Virginica
virginica <- iris[iris$Species=="virginica",]
mean_petal_length <- mean(virginica$Petal.Length)
minimum_petal_length <- min(virginica$Petal.Length)
maximum_petal_length <- max(virginica$Petal.Length)
  