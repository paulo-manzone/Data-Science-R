#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio5.xls", sheetName = "Plan1")

png("./graficos/ex5.png")
barplot(df$Npessoas, names.arg = df$Marcas, ylim=c(0,50), col = rainbow(10), main="Antitérmico preferido")
dev.off()
