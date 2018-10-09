#Instalando pacotes
package.install("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df = read.xlsx("./dados/exercicio2.xls", sheetName = "Plan1")

#a)Tabela de frequencias
attach(df)
tabela = table(Casas)
png("./graficos/ex2a.png")
plot(tabela, asp=10, main="Frequencias")
dev.off()

#b)Medidas de posição e dispersão
Mins = min(df$Casas)
Maxs = max(df$Casas)
Quart1 = quantile(df$Casas, 0.25) 
Medians = median(df$Casas)
Quart3 = quantile(df$Casas, 0.75)
Means = mean(df$Casas)
Sds = sd(df$Casas)
CoefVar = Sds/Means

#c)Gráficos
#=========================================================
#dataframe com resultados maiores
ra = data.frame(matrix(ncol=1, nrow=6))
colnames(ra) = "Dados"
ra$Dados[1] = min(df$Casas)
ra$Dados[2] = max(df$Casas)
ra$Dados[3] = quantile(df$Casas, 0.25)
ra$Dados[4] = median(df$Casas)
ra$Dados[5] = quantile(df$Casas, 0.75)
ra$Dados[6] = mean(df$Casas)


ra2 =  c("min","max","qrt1","med","qrt3", "media")
plot(factor(r2), ra$Dados, xlab="medida", ylab="valores")

png("./graficos/ex2maiores.png")
plot(factor(ra2), ra$Dados, xlab="medida", ylab="valores")
dev.off()

#==========================================================
#dataframe com resultados menores
rb = data.frame(matrix(ncol=1, nrow=2))
colnames(rb) = "Dados"
rb$Dados[1] = sd(df$Casas)
rb$Dados[2] = Sds/Means



rb2 =  c("Sds","CVar")
plot(factor(rb2), rb$Dados, xlab="medida", ylab="valores")

png("./graficos/ex2menores.png")
plot(factor(rb2), rb$Dados, xlab="medida", ylab="valores")
dev.off()
#==========================================================

