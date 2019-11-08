# Question 1

# set path
setwd('/Users/user/Desktop/excercise6/Biocomp_exercise06/')
# import the dataset 'wages'
wages = read.csv('wages.csv')
# define the number of top lines you want to present
n = 5
# print the first 'n' lines
head(wages,n)

# Question 2

# load dataset iris
iris = read.csv('iris.csv')

## print last two rows of the last two column
# calculate number of columns and rows of iris
nc = ncol(iris)
nr = nrow(iris)
# print last two rows of the last two column
iris[c(nr-1,nr),c(nc-1,nc)]

## get the number of observations for each species included in the data set
table(iris$Species)

## get rows with Sepal.Width > 3.5
iris[which(iris$Sepal.Width>3.5),]

## write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
# disset the dataset
setosa = iris[which(iris$Species=='setosa'),]
write.csv(setosa,'setosa.csv')

## calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica = iris[which(iris$Species=='virginica'),]
mean(virginica$Sepal.Length)
min(virginica$Sepal.Length)
max(virginica$Sepal.Length)
