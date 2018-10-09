#Baixando e carregando bibliotecas necessarias
install.packages("xlsx")
library(xlsx)
require(xlsx)

#Lendo dados
df1 = read.xlsx("./dados/exercicio1.xls", sheetName = "Plan1")

#Explorando dados
Mins = min(df1$Taxas.de.juros)
Maxs = max(df1$Taxas.de.juros)
Quart1 = quantile(df1$Taxas.de.juros, 0.25) 
Medians = median(df1$Taxas.de.juros)
Quart3 = quantile(df1$Taxas.de.juros, 0.75)
Means = mean(df1$Taxas.de.juros)
Sds = sd(df1$Taxas.de.juros)
CoefVar = Sds/Means
#=======================================================
#dataframe com resultados
r1 = data.frame(matrix(ncol=1, nrow=8))
colnames(r1) = "Dados"
r1$Dados[1] = min(df1$Taxas.de.juros)
r1$Dados[2] = max(df1$Taxas.de.juros)
r1$Dados[3] = quantile(df1$Taxas.de.juros, 0.25)
r1$Dados[4] = median(df1$Taxas.de.juros)
r1$Dados[5] = quantile(df1$Taxas.de.juros, 0.75)
r1$Dados[6] = mean(df1$Taxas.de.juros)
r1$Dados[7] = sd(df1$Taxas.de.juros)
r1$Dados[8] = Sds/Means

#plotando
r2 = c("min","max","qrt1","med","qrt3", "media", "sds", "cVar")
plot(factor(r2), r1$Dados, xlab="medida", ylab="valores")

#salvando em png
png("./graficos/ex1.png")
plot(factor(r2), r1$Dados, xlab="medida", ylab="valores")
dev.off()
#===========================================================
#dataframe com resultados maiores
ra = data.frame(matrix(ncol=1, nrow=6))
colnames(ra) = "Dados"
ra$Dados[1] = min(df1$Taxas.de.juros)
ra$Dados[2] = max(df1$Taxas.de.juros)
ra$Dados[3] = quantile(df1$Taxas.de.juros, 0.25)
ra$Dados[4] = median(df1$Taxas.de.juros)
ra$Dados[5] = quantile(df1$Taxas.de.juros, 0.75)
ra$Dados[6] = mean(df1$Taxas.de.juros)


ra2 =  c("min","max","qrt1","med","qrt3", "media")
plot(factor(r2), ra$Dados, xlab="medida", ylab="valores")

png("./graficos/ex1maiores.png")
plot(factor(ra2), ra$Dados, xlab="medida", ylab="valores")
dev.off()

#==========================================================
#dataframe com resultados menores
rb = data.frame(matrix(ncol=1, nrow=2))
colnames(rb) = "Dados"
rb$Dados[1] = sd(df1$Taxas.de.juros)
rb$Dados[2] = Sds/Means



rb2 =  c("Sds","CVar")
plot(factor(rb2), rb$Dados, xlab="medida", ylab="valores")

png("./graficos/ex1menores.png")
plot(factor(rb2), rb$Dados, xlab="medida", ylab="valores")
dev.off()
#==========================================================

