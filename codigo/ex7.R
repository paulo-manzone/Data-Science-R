#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio7.xls", sheetName = "Plan1")

png("./graficos/ex7.png")
barplot(df$Atendimento, names.arg = df$Areas, ylim=c(0,400), cex.names=0.7, col=rainbow(3), main="Atendimentos")
dev.off()
