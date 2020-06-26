# Ejercicios de matrices

# Reto 2
# Añadir una nueva columnas para con el dia sabado y horas de estudio

tiempo_platzi <- c(12,21,30,40,50)
tiempo_university <- c(10,20,30,40,50)

tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_university), ncol=5, nrow = 2, byrow = TRUE)

dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
Tiempo <-c("Tiempo platzi", "Tiempo de lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix

colSums(tiempo_matrix)
# Añadir una nueva fila para con tiempos de platzi_podcast
# Reto 1 
tiempo_posdcast <- c(12,11,20,10,20)
# Añadimos un nueva fila a nuestra matriz
tiempo_matrix <- rbind(tiempo_matrix,tiempo_posdcast)

# Añadimos un nuevo elemento a un vector ya existente
Tiempo <- c(Tiempo, "Tiempo de podcast")

# Asignamos los respectivos nombres a la filas de nuestra matriz
rownames(tiempo_matrix) <- Tiempo
tiempo_matrix

# Añadir una nueva columna para con el dia sabado

# Reto 2
# Vector de enteros: Sabado
# Sabado <-(platzi, lecturas, podcast)
sabado <- c(30,30,30);

# Añadimos una nueva columna
tiempo_matrix <- cbind(tiempo_matrix, sabado)

# Agregamos un "Sabado" a nuestro vector de strings
dias <- c(dias, "Sabado")
# Añadimos los nombres a las columnas de nuestra  matriz
colnames(tiempo_matrix) <- dias

tiempo_matrix

# Finalmente la suma de nuestros dias de estudio
colSums(tiempo_matrix)