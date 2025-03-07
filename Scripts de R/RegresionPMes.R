#Para obtener los datos necesarios para la regresión se necesitan correr los scripts siguientes:
# VectorFocos.R
# VectorTMax.R

regresion<-lm(focos~PMes)

plot(PMes, focos)
abline(regresion, col="red")

qqnorm(regresion$residuals, pch = 19, col = "gray50", main="Test de normalidad para PMes",xlab="Cuantiles Teóricos",ylab="Cuantiles PMes")
qqline(regresion$residuals,col="red")
