#Datasets
#Vemos la estructura interna de nuestro data set
#Nota al importar datasets asegurate de que esten en un buen formato
#ya sea por un espacio puede ser que este añadiendo un objeto mas
str(mtcars)
mtcars
#Nota tipo de dato en model como chr
#Para saber los tipos de datos de las variables ejecutamos el siguiente comando 
# ?mtcars
#Cuando veamos que son 1 y 0 debemos desconfiar de tipo de datoa

#Digame cual es el tipo de dato
class(mtcars$vs)
#conversion de tipo de datos 
# logical(boleean) <- integers
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)