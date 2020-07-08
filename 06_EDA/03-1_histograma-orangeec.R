library(ggplot2)

ggplot()+
  geom_histogram(data=orangeec, aes(x=GDP.PC),
                 fill="red", color="black",
                 binwidth = 2000)+
  labs(x="PIB per capita",y="Cantidad de paises",
       title="PIB per capita en paises de LATAM")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+ 
  geom_histogram(data=orangeec, aes(x=Creat.Ind...GDP),
                 fill="blue", color="red",
                 binwidth = 1)+
  labs(x="Aporte de la Economia Naranja al PIB(%)",y="Cantidad de paises",
       title="Contribuion de economia naranaja a los paises de LATAM")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+
  geom_histogram(data=orangeec, aes(x=Internet.penetration...population),
                 fill="violet", color="red",
                 binwidth = 5)+
  # Anadir label's faltantes en el eje x guiandonos con ek bindwith
  #seq(limite_inicial, limite_final, increment)
  scale_x_continuous(breaks=seq(40, max(100), 5))+
  labs(x="Penetracion de internet en la poblacion",y="Cantidad de paises",
       title="Penetracion de internet en los paises de LATAM")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        panel.grid.minor = element_blank())
str(orangeec)