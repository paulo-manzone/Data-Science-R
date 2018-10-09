#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio9.xls", sheetName = "Plan1")

#intervalos de 4 a 24 de 2 em 2
png("./graficos/ex9.png")
a=hist(df$Salarios,xlab="Salarios(x SM)", breaks=seq(0, 24, 2),col=rainbow(2),main="Salarios",axes=axis(side=1,seq(0,24,2)))
axis(side=2)
dev.off()

#tabela de df
tdf = table(cut(df$Salarios, seq(0,24,2)))
