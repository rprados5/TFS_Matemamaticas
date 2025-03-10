
viento<-c("E","N","W","S","Sin Datos")
focos_viento_BA<-c(0,0,0,0,0)
focos_viento_CC<-c(0,0,0,0,0)

n_focos<-length(focos)
i<-1
while (i<=n_focos) {
  aux<-trunc((i-1)/12)
  aux<-aux%%2
  #ENTRAMOS SI ES BADAJOZ SI NO, ES CACERES
  if(aux==0)
  {
    #ESTE
    este<-E[i]
    if(este=='VERDADERO')
    {
      focos_viento_BA[1]<-focos_viento_BA[1]+focos[i]
    }
    if(este=='SIN DATO')
    {
      focos_viento_BA[5]<-focos_viento_BA[5]+focos[i]
    }
    
    #NORTE
    norte<-N[i]
    if(norte=='VERDADERO')
    {
      focos_viento_BA[2]<-focos_viento_BA[2]+focos[i]
    }
    if(norte=='SIN DATO')
    {
      focos_viento_BA[5]<-focos_viento_BA[5]+focos[i]
    }
    
    #OESTE
    oeste<-W[i]
    if(oeste=='VERDADERO')
    {
      focos_viento_BA[3]<-focos_viento_BA[3]+focos[i]
    }
    if(oeste=='SIN DATO')
    {
      focos_viento_BA[5]<-focos_viento_BA[5]+focos[i]
    }
    
    #SUR
    sur<-S[i]
    if(oeste=='VERDADERO')
    {
      focos_viento_BA[4]<-focos_viento_BA[4]+focos[i]
    }
    if(oeste=='SIN DATO')
    {
      focos_viento_BA[5]<-focos_viento_BA[5]+focos[i]
    }
    
  }
  else
  {
    #ESTE
    este<-E[i]
    if(este=='VERDADERO')
    {
      focos_viento_CC[1]<-focos_viento_CC[1]+focos[i]
    }
    if(este=='SIN DATO')
    {
      focos_viento_CC[5]<-focos_viento_CC[5]+focos[i]
    }
    
    #NORTE
    norte<-N[i]
    if(norte=='VERDADERO')
    {
      focos_viento_CC[2]<-focos_viento_CC[2]+focos[i]
    }
    if(norte=='SIN DATO')
    {
      focos_viento_CC[5]<-focos_viento_CC[5]+focos[i]
    }
    
    #OESTE
    oeste<-W[i]
    if(oeste=='VERDADERO')
    {
      focos_viento_CC[3]<-focos_viento_CC[3]+focos[i]
    }
    if(oeste=='SIN DATO')
    {
      focos_viento_CC[5]<-focos_viento_CC[5]+focos[i]
    }
    
    #SUR
    sur<-S[i]
    if(oeste=='VERDADERO')
    {
      focos_viento_CC[4]<-focos_viento_CC[4]+focos[i]
    }
    if(oeste=='SIN DATO')
    {
      focos_viento_CC[5]<-focos_viento_CC[5]+focos[i]
    }
  }
i<-i+1   
}

barplot(focos_viento_BA,names=viento, main="Número de focos por año")

barplot(focos_viento_CC,names=viento, main="Número de focos por año")