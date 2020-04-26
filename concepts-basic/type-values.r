# str -> EStructura
str(mtcars)

# Dentro de la consola interactiva colocamos este valor
# Documentacion de nuestro dataset
?mtcars

# Vemos que tipo de dato
class(mtcars$wt)

# Cambiando el tipo de dato
# Numerico -> Boolean
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)
