#Para obtener los datos necesarios para la regresión se necesitan correr los scripts siguientes:
# VectorFocos.R
# VectorTMax.R

regresion<-lm(focos~TMin)

plot(TMin, focos)
abline(regresion, col="red")

qqnorm(regresion$residuals, pch = 19, col = "gray50", main="Test de normalidad para TMin",xlab="Cuantiles Teóricos",ylab="Cuantiles TMin")
qqline(regresion$residuals,col="red")