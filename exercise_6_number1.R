#function usage head_function(input_file, number of data lines to be printed, booleean of header or not) 

head_function <- function(input_file, num, HEADER){
  if(HEADER){
    writeLines(readLines(input_file,num+1))
  }
  if(!HEADER){
    writeLines(readLines(input_file,num))
  }
}

head_function("./wages.csv", 4, HEADER=FALSE)
