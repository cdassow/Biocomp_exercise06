#1, x=file name n=number of lines
bashhead<-function(x, n){
  scan=read.csv(x, header=FALSE)
  print=head(scan, n)
  return(print)
}
#2
file<-read.csv("../iris.csv")
bottomrows<-tail(file, 2)
part1<-bottomrows[,4:5]
part1
#part2
setosa<-sum(file$Species=="setosa")
print("Number of setosa")
setosa
versicolor<-sum(file$Species=="versicolor")
print("Number of versicolor")
versicolor
virginica<-sum(file$Species=="virginica")
print("Number of virginica")
virginica
#part3
file[file[,2]>3.5,]
#part4
setosa.csv<-head(file, 50)
#part5
virginica1<-file[file[,5]=="virginica",]
mean(virginica1[,3])
min(virginica1[,3])
max(virginica1[,3])
