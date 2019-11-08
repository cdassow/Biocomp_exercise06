#exercise 6 due 11/8

setwd("~/Desktop/Biocomp_exercise06")


#question 1: 
#select the first 6 lines from a file, just as the head function did in unix:
fileName <- read.csv(file="wages.csv")
whichNumbers <- seq(1, 6)
fileName[whichNumbers, ]

#question 2: 
#load iris.csv:
irisData <- read.csv(file="iris.csv")
#print the last 2 rows in the last 2 columns to the terminal:
whichColumns <- c(ncol(irisData) - 1, ncol(irisData))
whichRows <- c(nrow(irisData) - 1, nrow(irisData))
irisData[whichRows, whichColumns]

#get the number of observations for each species in the data set
numsetosa <- sum(irisData$Species=="setosa")
numversicolor <- sum(irisData$Species=="versicolor")
numvirginica <- sum(irisData$Species=="virginica")
#compile the data into a data frame
speciesName <- c("setosa", "versicolor", "virginica")
timesObserved <- c(numsetosa, numversicolor, numvirginica)
data.frame(speciesName, timesObserved)

#get rows with Sepal.Width > 3.5
irisData[irisData$Sepal.Width > 3.5,]

#write data for setosa to a csv file
#only choose the first 50 rows, as that is where the setosa data is
numsetosa <- sum(irisData$Species=="setosa")
setosaData <- irisData[1:numsetosa, ]
write.csv(setosaData, file = "setosa.csv", row.names = FALSE)

#calculate mean, minimum, and max values of Petal.Length from virginica
#choose the virginica petal length data, which is the last 50 rows and the 3rd column
numvirginica <- sum(irisData$Species=="virginica")
virginicaData <- tail(irisData, numvirginica)
virginicaDataPL <- virginicaData[,3]
#calculate mean of this data
mean(virginicaDataPL)
#calculate the min value of this data
min(virginicaDataPL)
#calculate the max value of this data
max(virginicaDataPL)
