#Gráfico de focos por mes

#Valores iniciales
meses<-c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
focos_mes<-c(0,0,0,0,0,0,0,0,0,0,0,0)

#Funcion Auxiliar

func_aux <- function(focos) {
  focos_aux<-c(0,0,0,0,0,0,0,0,0,0,0,0)
  n<-nrow(focos)
  i<-1
  while(i<=n)
  {
    f<-month(as.Date(focos[i,17], format = '%d/%m/%Y'))
    focos_aux[f]<-focos_aux[f]+1
    i<-i+1
  }
  return(focos_aux)
}



#2016
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

focos_mes<-focos_mes+func_aux(aux)

#2021
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2021.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

focos_mes<-focos_mes+func_aux(aux)

#2022
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2022.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

focos_mes<-focos_mes+func_aux(aux)

#2023
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2023.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

focos_mes<-focos_mes+func_aux(aux)

barplot(focos_mes,names=meses, main="Número de focos por mes")

