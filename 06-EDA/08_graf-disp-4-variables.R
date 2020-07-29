install.packages(c("plotly"))

library(ggplot2)
library(dplyr)
library(plotly)
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
       title="Inversion en educacion y  segun por debajo de la linea de pobreza")

# Uso de plots interactivos
my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP,
                                 label=row.names(orangeec)))+
  geom_point()+
    labs(x="Penetracion de internet en la poblacion",
         y="Aporte de la economia",
         title ="Penetracion de internet y aporte de la economia naranja")
my_graph
# hacemos uso de plotty una libreria open source "js"
economy_plotly = ggplotly(my_graph)
economy_plotly