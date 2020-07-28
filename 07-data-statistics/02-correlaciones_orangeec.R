library(dplyr)

#Miramos graficamente las correlaciones de nuestras varbables
pairs(orangeec[,2:6])
pairs(orangeec[,5:10])
new_data <-subset(orangeec, select = c(5,6,10,11,12,13))
pairs(new_data)
#Algunas correlaciones no son tan visibles por lo cual haremos uso de la funcion "cor()"
cor(orangeec[,2:6], use="complete.obs")
cor(orangeec[,5:10], use="complete.obs")
cor(new_data, use="complete.obs")