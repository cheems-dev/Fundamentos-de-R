library(ggplot2)

#as.factor() para indicar que el numero es una categoria. Se paso de ver con error la grafica a ver las tres categorias de 4, 6 y 8 cilindros en cada boxplot correspondiente
ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
  #(alpha= ) para cambiar el color de un boxplot en la grafica. Se cambio un azul oscuro por
  #un gris para ver la linea de la media
  geom_boxplot(alpha = 0.6)+
  labs(x = "Cilindros", y = "Caballos de fuerza",
       title = " Caballos de fureza segun cilindros en mtcarss")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#Ejemplo 2
ggplot(mtcars, aes(x=as.factor(am), y=mpg, fill=am))+
  geom_boxplot(alpha = 0.6)+
  labs(x = "Tipo de caja", y = "Millas por galon",
       title = "Millas por galon segun tipo de caja MTCARS")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#Se hizo un cambio en la expresiòn de la variable am de 1, 0 a MANUAL, AUTOMATICO:
      
mtcars$am <- factor(mtcars$am, levels=c(1,0),labels=c("Manual", "Automatico"))
