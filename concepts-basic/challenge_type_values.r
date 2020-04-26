# Encontrar los objetos en orangeec
# Manera de extraer un dataset mediante
orangeec <- read.table("https://raw.githubusercontent.com/sap0408/Orange-Economy/master/orangeec.csv", header =  TRUE, sep = ",")
#Resultado es 17 observaciones de 13 variables
str(orangeec)

#summary: función que nos va a mostrar un resumen del dataset que le mandemos.
summary(orangeec)