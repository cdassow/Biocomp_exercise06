#function usage head_function(input_file, number of lines to be printed)
head_function <- function(input_file, num){
  writeLines(readLines(input_file,num))
}

head_function("./wages.csv", 4)
