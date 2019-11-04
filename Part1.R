#R version of Unix's head function
wages = read.csv("./Biocomp_exercise06/wages.csv",
         sep = ",")

head(wages)
head(wages, n=7L)
