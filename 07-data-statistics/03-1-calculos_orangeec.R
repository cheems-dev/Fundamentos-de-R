summary(orangeec$Internet.penetration...population)

#Promedio
mean(orangeec$Internet.penetration...population)
promedio_Int <-mean(orangeec$Internet.penetration...population)
promedio_Int

#Desviacion Estandar
sd(orangeec$Internet.penetration...population)
devEst_INt <-sd(orangeec$Internet.penetration...population)
devEst_INt

#Coeficiente de desviacion
CoeDev_Int <- (devEst_INt/promedio_Int) * 100
# 25.24 -> Podemos decir que es admitible
CoeDev_Int

#
mean(orangeec$Creat.Ind...GDP)
promedio_creat <-mean(orangeec$Creat.Ind...GDP, na.rm = TRUE)  
promedio_creat
#
sd(orangeec$Creat.Ind...GDP, na.rm = TRUE)
sd_creat <-sd(orangeec$Creat.Ind...GDP, na.rm = TRUE) 
sd_creat
#
CoeV_creat <- (sd_creat/promedio_creat)*100
CoeV_creat
