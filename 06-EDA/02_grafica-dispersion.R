# EDA Scatler Plot mtcars
# Para realizar EDA con una gráfica de dispersión dentro de R debemos utilizar la función plot, los argumentos que debemos pasarle son:

#     la información en el eje X y Y.
#     xlab: título para el eje x.
#     ylab: título para el eje y.
#     main: título de la gráfica.

plot(mtcars$mpg ~ mtcars$cyl,
     xlab="Cilindros", ylab= "millas por galon",
     main="Relacion cilindros y millas por galon")

plot(mtcars$mpg ~ mtcars$hp,
     xlab="Caballos de fuerza", ylab= "millas por galon",
     main="Relacion caballos de fuerza y millas por galon")

# EDA Scatler Plot orangeec

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inversion educacion (%PIB)",
     ylab="Desempleo",
     main="Relacion inversion en educacion y desempleo")


plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte de la economia naranja  PIB(%)",
     ylab="PIB per càpita",
     main="Relacion aporte de la economia naranja y PIB per càpita")
