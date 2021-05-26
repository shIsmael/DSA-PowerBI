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
