library(dplyr)
library(ggplot2)

orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.. < 2.5,"Menos a 2,5%","Mayor a 2,5%"))

#
orangeec <- orangeec %>%
  mutate(Anaranjado = ifelse(GDP.Growth.. < 2.5,"Menos anaranjado","Mas anarajado"))

#Ordenamos nuestro dataset de forma descendente
orangeec <- orangeec %>%
  arrange(desc(Creat.Ind...GDP))

#Seleccionamos 5 paises 
TopEconomyOrange <- filter(orangeec[1:6,])

TopEconomyOrange


