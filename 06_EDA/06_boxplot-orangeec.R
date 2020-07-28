library(dplyr)
#de la libreria dply -> se usa el mutate, %(pipe)

# Promedio -> nuestro data orangeec$DPC.PC
economy <- mean(orangeec$GDP.PC)
economy

#Vamos a mutar nuestro dataset para agregar una columna Strong Economy
orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                                 "Por debajo del promedio",
                                 "Sobre- Arriba promedio pib per capita"))

#ggplot -> vamos a hacer nuestro ggplot

ggplot(orangeec,aes(x=Strong_economy, y = Creat.Ind...GDP,
                    fill=Strong_economy))+
  geom_boxplot(alpha= 0.4)+
  labs(x ="Tipo de pais", y = "Aporte de economia narajana al pib",
       title= "Aporte de la economia naranja en pib paises latam con alto y bajo  pib per capita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
ggplot(orangeec,aes(x=Strong_economy, y = Internet.penetration...population,
                    fill=Strong_economy))+
  geom_boxplot(alpha= 0.4)+
  labs(x ="Tipo de pais", y = "Penetracion de internet en la poblacion",
       title= "Penetracion de internet en pib paises latam con alto y bajo  pib per capita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())