#####Biocomputing exercise 06#####

#Set working directory4:5
setwd("C:/Users/ceara/Desktop/Biocomputing2019/Biocomp_exercise06")

#Part 1: 
  #Read in .csv file
  wagesDF<-read.csv("wages.csv", stringsAsFactors = F)

  #get top 6 lines of file
  head(wagesDF, 6)

#Part 2
  irisDF<-read.csv("iris.csv", stringsAsFactors = F)
  
  #Print last two rows
  tail(irisDF, 2)
  
  #print last two columns
  irisDF[,4:5]  
  
  #number of observations for each species
  aggregate(irisDF, by=list(irisDF[,5]), FUN=length)
  
  #subset to find obs of Sepal.Width > 3.5
  irisDF[irisDF$Sepal.Width > 3.5, ]
  
  #get only setosa data
  setosaObs<-irisDF[irisDF$Species == "setosa",]
  
  #write to file
  write.csv(setosaObs, file= "Setosa.csv", row.names = FALSE)
  
  #Calculate mean, min, and max of Petal.Length for Virginica
  virginicaObs<-irisDF[irisDF$Species == "virginica",]
  mean(virginicaObs$Petal.Length)  
  min(virginicaObs$Petal.Length)  
  max(virginicaObs$Petal.Length)
  