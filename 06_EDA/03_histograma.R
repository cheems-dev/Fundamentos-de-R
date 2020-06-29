# Para realizar EDA con un histograma dentro de R debemos utilizar la función qplot, los argumentos que debemos pasarle son:

#     la información en el eje X.
#     geom: describir el tipo de gráfica que se va a imprimir.
#     xlab: título para el eje x.
#     main: título de la gráfica.

# Además, podemos crear histogramas con el paquete ggplot2 para ello debemos instalarlo: install.packages(“ggplot2”).
install.packages('ggplot2')
library(ggplot2)

#histogramas mtcars qplot
qplot(mtcars$hp,
      geom ="histogram",
      xlab = "Caballos de fuerza",
      main="Carros segun los caballos de fuerza")
#Haciendo uso de la libreria ggplot2
ggplot(mtcars, aes(x=hp))+
  geom_histogram()+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())

#Binwidth
ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())
#Otra forma de hacer uso de la libreria ggplot2 -> mas personalizacion de colores
ggplot()+
  geom_histogram(data=mtcars, aes(x=hp),
                 fill="blue", color="red",
                 binwidth = 20)+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  #Limites en eje X
  xlim(c(80,280))+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())