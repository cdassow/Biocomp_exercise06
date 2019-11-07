# Biocomputing_Exercise6_Pierret

# 1. R code that replicates the function we used in Unix - 
variable1 <- irisdata[1:10,]


# 2. 
irisdata <- read.csv("~/Biocomp_exercise06/iris.csv") 

# Print the last 3 rows in the last 2 columns 
irisdata[149:150, 4:5]

#get number of observations for each species
virginica2 = irisdata[irisdata$Species == "virginca",]
setosa2 = irisdata[irisdata$Species == "setosa",]
versicolor2 = irisdata[irisdata$Species == "versicolor",]
## Output: 50

# get rows with Sepal.Width>3.5
Sepal.Width2 = irisdata[irisdata$Sepal.Width>3.5,]
Dim(Sepal.Width2)
## Output: 19

#Write the data for the species setosa to a comma-delimited file named 'setosa.csv'
setosa3 <- irisdata[irisdata$Species == "setosa",]
write.csv(setosa3, file = 'setosa.csv', sep = ",")

# calculate max, min, and mean of Petal.Length for virginica
data1 <- irisdata[irisdata$Species == "virginica",]
data2 <- data1[,c(3, 5)]
max(data2[1])
## Output: 6.9
min(data2[1])
## Output: 4.5
mean(data2[,1])
##Output: 5.552