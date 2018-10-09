#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio4.xls", sheetName = "Plan1")
#Explorando
attach(df)
distribuicao = table(Salarios)
barplot(distribuicao, ylim=c(0,2), cex.names = 0.4)
png("./graficos/ex4.png")
hist(df$Salarios, xlab="Salarios(x salario minimo)", main="Histograma dos salarios")
dev.off()
