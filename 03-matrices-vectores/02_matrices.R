# Una matriz debe tener mismo tipo de datos, por otro lado, un dataframe puede tener diferentes.
# Para crear una matriz en R utilizaremos la función matrix cuyos argumentos son:

#     la información de los elementos.
#     nrow: número de filas.
#     ncol: número de columnas.
#     byrow: booleano para indicar si llenar la matriz por filas.

# colSums es una función que por argumento recibe una matriz y te retorna la suma de los valores de sus columnas.
tiempo_platzi <- c(12,21,30,40,50)
tiempo_university <- c(10,20,30,40,50)
tiempo_matrix = tiempo_platzi + tiempo_university
tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_university), ncol=3, nrow = 3, byrow = TRUE)

dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
Tiempo <-c("Tiempo platzi", "Tiempo de lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix