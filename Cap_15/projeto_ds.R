install.packages(c("Amelia", "caret", "ggplot2", "dplyr", "reshape", "randomForest", "e1071"))

library("Amelia")
library("caret")
library("ggplot2")
library("dplyr")
library("reshape")
library("randomForest")
library("e1071")

# fonte: https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients

dados_clientes = read.csv("Cap_15/dataset.csv")
View(dados_clientes)
dim(dados_clientes)
str(dados_clientes)
summary(dados_clientes)

# Limpeza

dados_clientes$ID <- NULL

colnames(dados_clientes)[24] <- "inadimplente"
colnames(dados_clientes)

# Verificando dados ausentes

sapply(dados_clientes, function(x) sum(is.na(x)))

# Outra forma, usando o pacote Amelia

missmap(dados_clientes, main="Valores Faltantes Observados")

# Não temos valores faltantes, mas caso tivessemos, basta usar

#dados_clientes <- na.omit(dados_clientes)

# Alterando o nome das colunas para melhor visualização

colnames(dados_clientes)
colnames(dados_clientes)[2] <- "Genero"
colnames(dados_clientes)[3] <- "Escolaridade"
colnames(dados_clientes)[4] <- "Estado_Civil"
colnames(dados_clientes)[5] <- "Idade"
colnames(dados_clientes)

# Genero

dados_clientes$Genero <- cut(dados_clientes$Genero, c(0,1,2), labels=c("Masculino", "Feminino"))
str(dados_clientes$Genero)

# Escolaridade

str(dados_clientes$Escolaridade)
summary(dados_clientes$Escolaridade)

# É possível notar que varia´vel estado_civil apresenta valores indefinidos, como por exemplo o 6

dados_clientes$Escolaridade <- cut(dados_clientes$Escolaridade, c(0,1,2,3,4), 
                                   labels = c("Pos Graduado",
                                              "Graduado",
                                              "Ensino Medio",
                                              "Outros"))
str(dados_clientes$Escolaridade)
summary(dados_clientes$Escolaridade)

# Estado Civil
str(dados_clientes$Estado_Civil)
summary(dados_clientes$Estado_Civil)

#Dessa vez optou-se por tratar os valroes desconhecidos na categoria desconhecido, 
# diferentemente do que foi feito anteriormente

dados_clientes$Estado_Civil <- cut(dados_clientes$Estado_Civil, c(-1,0,1,2,3),
                                   labels=c("Desconhecido", "Casado", "Solteiro",
                                            "Outro"))
summary(dados_clientes$Estado_Civil)


