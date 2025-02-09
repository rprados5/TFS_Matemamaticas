#Gráfico de focos al año separados por serotipo
#2016
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2016.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
  a<-"2016"
  s1<-sum(ifelse(aux$Serotipo==1,1,0))
  s4<-sum(ifelse(aux$Serotipo==4,1,0))
  
#2017
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2017.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")

a<-c(a,"2017")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2018
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2018.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2018")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2019
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2019.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2019")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2020
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2020.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2020")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2021
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2021.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2021")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2022
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2022.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2022")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }

#2023
csvurl<-"https://github.com/rprados5/TFS_Matemamaticas/blob/main/CSVs%20Epidemiologicos/datosEp2023.csv?raw=true"
aux<-read.csv(url(csvurl),
              header = TRUE,sep = ";",encoding = "UTF-8")
a<-c(a,"2023")
if(nrow(aux)==0)
{s1<-c(s1,0)
s4<-c(s4,0) }else{s1<-c(s1,sum(ifelse(aux$Serotipo==1,1,0)))
s4<-c(s4,sum(ifelse(aux$Serotipo==4,1,0))) }



barplot(s1,names=a, main="Número de focos de Serotipo 1")
barplot(s4,names=a, main="Número de focos de Serotipo 4")

  