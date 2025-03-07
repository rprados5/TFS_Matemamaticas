#Para obtener los datos necesarios para la regresión se necesitan correr los scripts siguientes:
# VectorFocos.R
# VectorTMax.R

regresion<-lm(focos~TMax)

plot(TMax, focos)
abline(regresion, col="red")

qqnorm(regresion$residuals, pch = 19, col = "gray50", main="Test de normalidad para TMax",xlab="Cuantiles Teóricos",ylab="Cuantiles TMax")
qqline(regresion$residuals,col="red")