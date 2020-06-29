install.packages("dplyr")
library(dplyr)

head(orangeec, 4)
tail(orangeec, 2)
# Vemos de una manera mas amigable el contenido de nuestro dataset
glimpse(orangeec)

vector_number<- 1:7
vector_number
matrix_number <- matrix(1:9,ncol = 3)
matrix_number

matrix_df <- orangeec[1:2,]
matrix_df
#Haciendo uso de listas 
my_list <- list(vector_number, matrix_number, matrix_df)
my_list