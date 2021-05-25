# Exercicio 1

df <- read.csv(file.choose())

# 1

str(df)
summary(df)

# 2

mean(df$TurmaA)
mean(df$TurmaB)

# 3
var(df$TurmaA)
var(df$TurmaB)
print("A turma que apresenta maior variância é a turma A")

# 4 
sd(df$TurmaA)/mean(df$TurmaA)
sd(df$TurmaB)/mean(df$TurmaB)

# 5
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(df$TurmaA)
Mode(df$TurmaB)
