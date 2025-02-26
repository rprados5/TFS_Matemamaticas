#Para obtener los datos necesarios para la regresión se necesitan correr los scripts siguientes:
# VectorFocos.R
# VectorPMes.R
# VectorTMax.R
# VectorTMin.R
# VectorWMed.R

multiple1<-lm(focos~PMes+TMax+TMin+WMed)



x_PMes<-mean(PMes)
x_TMax<-mean(TMax)
x_TMin<-mean(TMin)
x_WMed<-mean(WMed)

reg1<-multiple1$coefficients[1]+multiple1$coefficients[2]*x_PMes+multiple1$coefficients[3]*x_TMax
    +x_PMes+multiple1$coefficients[4]*x_TMin+multiple1$coefficients[5]*x_WMed

