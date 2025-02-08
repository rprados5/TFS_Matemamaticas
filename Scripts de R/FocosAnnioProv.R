#Gráfico de focos al año por provincia
#2016
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
aux<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")

a<-"2016"
ba_n<-nrow(subset(aux,Provincia== "BADAJOZ"))
cc_n<-nrow(subset(aux,Provincia== "CÁCERES"))

#2017
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2017.csv?raw=true"
aux<-read.csv(url(csvurl),
                  header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2017")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))

#2018
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2018.csv?raw=true"
aux<-read.csv(url(csvurl),
                  header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2018")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))

#2019
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2017.csv?raw=true"
aux<-read.csv(url(csvurl),
                  header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2019")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))

#2020
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2020.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2020")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))

#2021
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2021.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2021")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))

#2022
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2022.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2022")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))


#2023
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2023.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2023")
ba_n<-c(ba_n,nrow(subset(aux,Provincia== "BADAJOZ")))
cc_n<-c(cc_n,nrow(subset(aux,Provincia== "CÁCERES")))


barplot(ba_n,names=a, main="Número de focos por año en Badajoz")
barplot(cc_n,names=a, main="Número de focos por año en Cáceres")