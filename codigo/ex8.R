#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio8.xls", sheetName = "Plan1")

#jogando conjunto num unico array
valores = data.matrix(df)

#intervalos de 1.5 a 2 de 0.05 em 0.05
png(".graficos/ex8.png")
hist(valores, breaks=seq(1.5, 2, 0.05),  col=rainbow(2), main="Histograma de Valores por Classes")
dev.off()

#tabela de df
tdf = table(valores)

