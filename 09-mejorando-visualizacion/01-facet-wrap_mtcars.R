library(dplyr)
library(ggplot2)
#Ordenamos de acuerdo a su peso
mtcars %>%
  arrange(desc(mtcars$peso_kilos))

Mas_pesados <- filter(mtcars[1:4,])
Mas_pesados

ggplot(Mas_pesados,
       aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso))+
  geom_point()+
  facet_wrap(~am)

# Reto
ggplot(mtcars, aes(x=cyl, y=mpg, size=peso_kilos))+
  geom_point(aes(color=Peso))+
  facet_wrap(~am)
