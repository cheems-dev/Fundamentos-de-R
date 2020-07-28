library(stringr)
library(dplyr)
#La función pairs nos permite cruzar todas las variables del dataset a modo de tabla donde el eje x de una gráfica corresponde a la columna donde se encuentra y el eje y a la fila.

#select: función para seleccionar variables o columnas.
#filter: función para filtrar datos de un dataset, retorna las filas que pasen el filtro.

## SELECIONES
# Podemos cruzar||relacionar variables de la matriz 
# [,] -> todas las observaciones
#[,2:6] -> columnas del 2 al 6
pairs(mtcars[,2:6])
#
pairs(mtcars)
#subset(dataset, select(añadiendo #columnas-> c(2,7:8,11,12))
new_data <- subset(mtcars, select = c(2,7:8,11,12))
pairs(new_data)
#subset(dataset, select(quitando #columnas->  -c(1,3,4,5,6,9,10))
new_data_one <- subset(mtcars, select = -c(1,3,4,5,6,9,10))
pairs(mtcars)
## otra forma sin usar subset()
pairs(mtcars[,-c(1,3,4,5,6,9,10)])

##FILTROS(observaciones y filas)
Eficientes <- filter(mtcars, mpg >= 30)
#hacemos uso de stringr -> filtros con string
merc <- mtcars %>%
  filter(str_detect(model,"Merc"))
merc
pairs(merc[,2:6])
cor(merc[,2:6])
#Correlacion (1 - 0)
# No implica causalidad
cor(mtcars[,2:6])
