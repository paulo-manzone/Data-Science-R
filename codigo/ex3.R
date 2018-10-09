#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio3.xls", sheetName = "Planilha1")

#Explorando dados
#a) Mediana
somanfamilias=0
for(i in 1:7){
  somanfamilias =  somanfamilias + df$Familias[i]
}
indicemediana = somanfamilias/2

somatorio = 0
indice=0
while(somatorio < indicemediana){
  somatorio = somatorio + df$Familias[indice+1]
  indice = indice + 1
}
mediana = df$N_Filhos[indice]

#b) Moda
maximo = max(df$Familias)
indice=1
while(maximo != df$Familias[indice]){
  indice = indice+1
}
moda = df$N_Filhos[indice]

#Criando o gráfico
gdf = data.frame(matrix(ncol=1, nrow = 2))
colnames(gdf) = "Medida"
gdf$Medida[1] = moda
gdf$Medida[2] = mediana

r = c("Moda", "Mediana")

plot(factor(r), gdf$Medida)

png("./graficos/ex3.png")
barplot(gdf$Medida, names.arg = c("Moda", "Mediana"), main="Medidas de Posição", ylab="Valor", ylim=c(0,3) )
dev.off()




