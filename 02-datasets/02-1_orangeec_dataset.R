#Reto importar el dataset orangeec y ver los objetos y varibles que tiene
# Mediante url's
#Importamos nuestro dataset
orangeec = read.csv('https://raw.githubusercontent.com/sap0408/Orange-Economy/master/orangeec.csv', header = TRUE,  sep = ',',  stringsAsFactors = FALSE)
orangeec
#Vemos la estructura de nuestro dataset "orangeec"
str(orangeec)
