install.packages("plyr")
library(plyr)

str(orangeec)
#Escribimos esta operación dentro de los corchetes, antes de una coma. No escribimos nada después de la coma, para obtener un subconjunto con todas las columnas de orangeec.
orangeec[orangeec$GDP.PC >= 15000,]

#Que paises tienen un aporte al GDP.PC a travez de la economia naraja, menor del dos porciento
orangeec[orangeec$Creat.Ind...GDP <=2, ]

new_orangeec <- subset(orangeec, Internet.penetration...population >80
                       & Education.invest...GDP >= 4.5,
                       select = Creat.Ind...GDP)
new_orangeec
#usamos el paquete plyr
rename(orangeec,c("Creat.Ind...GDP" = "AporteE.N"))