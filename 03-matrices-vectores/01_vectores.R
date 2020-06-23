# Un vector es un ente matemático que se usa para guardar información de un mismo tipo, dentro de R se crean los vectores con la función c.

# vectores de enteros
tiempo_platzi <- c(50,21,32,40,55)
tiempo_university <- c(10,20,30,40,50)

# vectores de cadenas(string)
day_weekend <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
day_weekend

# vectores booleanos
vector_boolean <- c(TRUE, FALSE, TRUE, TRUE)
vector_boolean

# sum es una función que como su nombre lo indica, retorna la suma de los valores que le indiquemos.
tiempo_estudios <- sum(tiempo_platzi)
tiempo_estudios

tiempo_estudios <- sum(tiempo_university)
tiempo_estudios

#Nota:
#Digamos que queremos ver que dias de la semana somos productivos 
#hacemos uso de un tipo entero y tipo string pero los vectores no tienen esta capacidad
#Para este problema usamos las matrices
