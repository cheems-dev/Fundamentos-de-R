install.packages("plotty")

library(ggplot2)
library(dplyr)
# Nota -> añadir una variable mas a nuestro data set
# Promedio -> nuestro data orangeec$DPC.PC
economy <- mean(orangeec$GDP.PC)
economy

#Vamos a mutar nuestro dataset para agregar una columna Strong Economy
orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                                 "Por debajo del promedio",
                                 "Sobre- Arriba promedio pib per capita"))
#
ggplot(orangeec, aes(Internet.penetration...population,Creat.Ind...GDP))+
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(s="Penetracion de internet en la poblacion",
       y="Aporte de la economia naranja al PIB",
       title="Internet y  aporte economico segun el nivel de economia y crecimiento PIB")

## Reto
ggplot(orangeec, aes(Education.invest...GDP , Unemployment))+
  geom_point(aes(color=factor(Strong_economy), size=X..pop.below.poverty.line))+
  labs(s="Inversion en educacion",
       y="Desempleo",
       # title="Inversion en educacion y  segun por debajo de la linea de pobreza")