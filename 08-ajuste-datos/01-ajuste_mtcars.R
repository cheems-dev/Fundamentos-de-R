library(dplyr)

summary(mtcars$mpg)

eficientes <- mean(mtcars$mpg)
eficientes
mtcars <- mtcars %>%
  mutate(mas_eficientes=if_else(mpg<eficientes,
                                "bajo el promedio",
                                "sobre el promedio"))

mas_veloces <- mtcars[mtcars$qsec <16,]
mas_veloces

mtcars <- mtcars %>%
  mutate(vel_x_cuarto_milla = ifelse(qsec<16,
                                     "Menos de 16 seg",
                                     "Mayor de 16 seg"))
#Cambio de libras a kilos
mtcars <- mtcars %>%
  mutate(peso_kilos = (wt/2)*1000)

#Promedio
prom_peso<-mean(mtcars$peso_kilos)
prom_peso
#Desviacion estandar
sd_peso<-sd(mtcars$peso_kilos)
sd_peso
#Coeficiente de desviacion
CoeD_peso = (sd_peso/prom_peso)* 100
#NUestra desviacion es mas del 25% pero por temas didacticos lo omitiremos
CoeD_peso

mtcars <- mtcars %>%
  mutate(Peso = if_else(peso_kilos < 1500,
                        "Es liviano", 
                        "Es pesado"))
mtcars <- mtcars %>%
  arrange(desc(mtcars$peso_kilos))

