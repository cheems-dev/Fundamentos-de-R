library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(plotly)
tp_ec <- ggplot(TopEconomyOrange, aes(x=Internet.penetration...population,
                             y=Services...GDP,
                             size=GDP.PC))+
  geom_point(aes(color=Crecimiento_GDP))+
  facet_wrap(~Country)
ggplotly(tp_ec)
# 
my_Colors <- brewer.pal(9,"Reds")

ggplot(TopEconomyOrange, 
       aes(x=Internet.penetration...population
           ,y=GDP.PC,fill=Creat.Ind...GDP))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors=my_Colors)