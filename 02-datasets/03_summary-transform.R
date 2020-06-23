#summary: función que nos va a mostrar un resumen del dataset que le mandemos.
summary(mtcars)
#Vamos a cambiar el peso de libras a kilos
wt <-(mtcars$wt*1000)/2
#Visualizamos la operacion realizada, pero no ejecuta ninguna modificacion
wt
#transform: función para modificar los valores de un dataset.
mtcars.new <- transform(mtcars,wt=wt*1000/2)
summary(mtcars.new)
# Importante
# Adaptar todas los datos y variables para la comprension