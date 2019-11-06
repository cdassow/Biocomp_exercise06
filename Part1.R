#R version of Unix's head function
wages = read.csv("./Biocomp_exercise06/wages.csv",
         sep = ",")

head(wages)
head(wages, n=7L)
#or
first_rows=6
wages[1:first_rows,]
