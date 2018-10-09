#Instalando pacotes
package.install("xlsx")
install.packages("qcc")
library(qcc)
require(qcc)
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio6.xls", sheetName = "Plan1")

#construindo pareto
baixo=c("Razoavel", "Ruim", "Bom","Pessimo","Excelente")
png("./graficos/ex6.png")
pareto.chart(df$NÂº.pessoas, main="Gráfico de Pareto",names.arg=baixo)
dev.off()
