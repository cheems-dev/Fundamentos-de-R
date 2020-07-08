library(ggplot2)

ggplot(mtcars, aes(hp, mpg))+
  geom_point()+
  labs(x="Cabellos de fuerza", y ="Millas por galon",
         title="Relacion caballos de fuerza por millas por galon")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(wt, hp))+
  geom_point()+
  labs(x="Peso", y ="Caballo de fuerza",
       title="Relacion peso y caballos de fuerza")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#qsec -> cuarto de milla
ggplot(mtcars, aes(hp, qsec))+
  #nuestra forma point
  #1.color->el color va depender del tipo de caja
  #2.size-> tamaño dependera del numero de cylindros
  geom_point(aes(color=am, size=cyl))+
  labs(s="Caballos de fuerza",
       y="1/4 milla por segundo",
       title="Caballos de fuerza('Velocidad') segun 
       cilindraje y tipo de caja")
# Hacemos un cambio de en el valor de mtcars$am("Tipo de caja") (1)->Automatico (0)->Manual))
mtcars$am <- factor(mtcars$am, levels=c(1,0),labels=c("Manual", "Automatico"))