#Gráfico de focos al año
#2016
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
ep2016p<-read.csv(url(csvurl),
                 header = TRUE,sep = ";",encoding = "UTF-8")
ba<-subset(ep2016p,Provincia== "BADAJOZ")
cc<-subset(ep2016p,Provincia== "CÁCERES")