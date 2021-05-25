# Tabela de Frequencia

df = read.csv("Cap_12/Usuarios.csv")

# Absoluta
freq <- table(df$grau_instrucao)
View(freq)

# Relativa
freq_rel <- prop.table(freq)
View(freq_rel)

#Adcionando linha de total

freq <- c(freq, sum(freq))
names(freq)[4] <- "Total"
View(freq)
