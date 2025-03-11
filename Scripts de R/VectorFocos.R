
#Vector Focos

#Funciones Auxiliares

func_focos <- function(focos) {
  
  focos_aux<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
  

  n<-nrow(focos)
  i<-1
  while(i<=n)
  {
    f<-month(as.Date(focos[i,17], format = '%d/%m/%Y'))
    if(focos[i,6]=='BADAJOZ')
    {
      focos_aux[f]<-focos_aux[f]+1
    }
    else
    {
      focos_aux[f+12]<-focos_aux[f+12]+1
    }
    
    i<-i+1
  }
  
  
  
  return(focos_aux)
}


#2016

csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

focos_temp<-func_focos(aux)
focos<-focos_temp

#2021

csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2021.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")


focos_temp<-func_focos(aux)
focos<-c(focos,focos_temp)


#2022

csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2022.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")


focos_temp<-func_focos(aux)
focos<-c(focos,focos_temp)


#2023

#FOCOS
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2023.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")


focos_temp<-func_focos(aux)
focos<-c(focos,focos_temp)
