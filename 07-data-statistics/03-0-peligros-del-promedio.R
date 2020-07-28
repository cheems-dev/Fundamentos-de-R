summary(mtcars$mpg)
#Promedio 
mean_mpg <- mean(mtcars$mpg)
mean_mpg
#Desviacion de estandar
de_mpg <- sd(mtcars$mpg)
de_mpg
#Coeficiente de variacion
cv_mpg <- (de_mpg/mean_mpg)*100
#Nota que si pasa de los 25% no son homogeneos 
cv_mpg

