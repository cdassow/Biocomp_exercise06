#creating data frame for every the rest of the question
iris_frame = read.csv(file="./iris.csv", header=TRUE, sep=",")

#----------------------------------------------------------------------------------#

#output the last two columns of last two rows (hard coded no options)
#save the dimetionss of the frame into an array
size_arr <- dim(iris_frame)
#print bottom two rows of last two colums
print(iris_frame[(size_arr[1]-1):size_arr[1],(size_arr[2]-1):(size_arr[2])])
 
#----------------------------------------------------------------------------------#

#number of observations of each species
cat("\nSetosa count =", length(which(iris_frame =="setosa" )))
cat("\nVersicolor count =", length(which(iris_frame =="versicolor")))
cat("\nVirginica count =", length(which(iris_frame =="virginica")),"\n")

#----------------------------------------------------------------------------------#

#printing also rows with pedals wider than 3.5
print(iris_frame[which(iris_frame[,2]>3.5),])


#----------------------------------------------------------------------------------#

#writing all setosa data to csv file
write.csv(iris_frame[which(iris_frame[,5]=="setosa"),], file="setosa.csv",row.names = FALSE)

#----------------------------------------------------------------------------------#
#mean of virginica pedal length
print(mean((iris_frame[which(iris_frame[,5]=="virginica"),])[,3]))

#min of virginica pedal length
print(min((iris_frame[which(iris_frame[,5]=="virginica"),])[,3]))

#max of virginica pedal length
print(max((iris_frame[which(iris_frame[,5]=="virginica"),])[,3]))
      
