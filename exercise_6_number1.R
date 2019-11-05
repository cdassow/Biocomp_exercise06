#function usage head_function(input_file, number of data lines to be printed, booleean of header or not) 

head_function <- function(input_file, num, bool_header){
  if(bool_header){
    writeLines(readLines(input_file,num+1))
  }
  if(!bool_header){
    writeLines(readLines(input_file,num))
  }
}

head_function("./wages.csv", 4, TRUE)
