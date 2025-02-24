#Vector PMes

#Funciones Auxiliares

func_Climatologicos <- function(datos) {
  
  datos_aux<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
  
  i<-2
  while(i<=13)
  {
    datos_aux[i-1]<-datos[1,i]
    datos_aux[i+11]<-datos[2,i]
    i<-i+1
  }
  return(datos_aux)
}



#2016

#TM_MAX
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Meteorologicos/2016/P_MES_2016.csv?raw=true"
aux_t<-read.csv(url(csvurl),
                header = TRUE,sep = ";",encoding = "UTF-8")


PMes_temp<-func_Climatologicos(aux_t)
PMes<-PMes_temp

#2021

#TM_MAX
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Meteorologicos/2021/P_MES_2021.csv?raw=true"
aux_t<-read.csv(url(csvurl),
                header = TRUE,sep = ";",encoding = "UTF-8")



PMes_temp<-func_Climatologicos(aux_t)
PMes<-c(PMes,PMes_temp)


#2022

#TM_MAX
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Meteorologicos/2022/P_MES_2022.csv?raw=true"
aux_t<-read.csv(url(csvurl),
                header = TRUE,sep = ";",encoding = "UTF-8")


PMes_temp<-func_Climatologicos(aux_t)
PMes<-c(PMes,PMes_temp)


#2023

#TM_MAX
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Meteorologicos/2023/P_MES_2023.csv?raw=true"
aux_t<-read.csv(url(csvurl),
                header = TRUE,sep = ";",encoding = "UTF-8")

PMes_temp<-func_Climatologicos(aux_t)
PMes<-c(PMes,PMes_temp)
