pasta = 'C:/Users/zsj7/Downloads/'

# Carregar m�dulos
library(lubridate)

# Ler dados
dados = read.csv2(paste0(pasta, "questao1.csv"),
                  stringsAsFactors = FALSE,
                  colClasses=c(rep("factor", 2), "character", "factor",
                               "character", rep("factor", 2), "character",
                               rep("factor", 2), "factor", rep("numeric", 4)))
dados = dados[,-ncol(dados)]

# Arrumar datas
nasc_1 = as.Date(dados$Data.de.nascimento, "%d/%m/%Y")
nasc_2 = as.Date(dados$Data.de.nascimento, "%m/%d/%y")

dados$Data.de.nascimento = as.Date(nasc_1)

dados$Data.de.nascimento[is.na(dados$Data.de.nascimento)] = 
  as.Date(nasc_2[is.na(dados$Data.de.nascimento)])

admis_1 = as.Date(dados$Data.de.admiss�o, "%d/%m/%Y")
admis_2 = as.Date(dados$Data.de.admiss�o, "%m/%d/%y")

dados$Data.de.admiss�o = as.Date(admis_1)

dados$Data.de.admiss�o[is.na(dados$Data.de.admiss�o)] = 
  as.Date(admis_2[is.na(dados$Data.de.admiss�o)])
