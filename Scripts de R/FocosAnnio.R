#Gráfico de focos al año
#2016
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
ep2016<-read.csv(url(csvurl),
                header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(2016)
n<-nrow(ep2016)
#2017
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2017.csv?raw=true"
ep2017<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2017)
n<-c(n,nrow(ep2017))
#2018
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2018.csv?raw=true"
ep2018<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2018)
n<-c(n,nrow(ep2018))
#2019
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2019.csv?raw=true"
ep2019<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2019)
n<-c(n,nrow(ep2019))
#2020
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2020.csv?raw=true"
ep2020<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2020)
n<-c(n,nrow(ep2020))
#2021
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2021.csv?raw=true"
ep2021<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2021)
n<-c(n,nrow(ep2021))
#2022
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2022.csv?raw=true"
ep2022<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2022)
n<-c(n,nrow(ep2022))
#2023
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2023.csv?raw=true"
ep2023<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,2023)
n<-c(n,nrow(ep2023))

barplot(n,names=a, main="Número de focos por año")