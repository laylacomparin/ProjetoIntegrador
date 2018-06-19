rm(list=ls(all=T))
if (!require(readr)) install.packages('readr');library(readr)
if (!require(dplyr)) install.packages('dplyr');library(dplyr)
if (!require(descr)) install.packages('descr');library(descr)
if (!require(stringr)) install.packages('descr');library(stringr)

###########################################################################################
#Lendo
resp = read.csv2("https://raw.githubusercontent.com/laylacomparin/ProjetoIntegrador/master/Lin_merged.counts",header = TRUE, sep = "\t")

rato = read.csv2("https://raw.githubusercontent.com/laylacomparin/ProjetoIntegrador/master/HD_Heatmap_Immune-System-2.txt",header = TRUE, sep = ",")
#nomeando coluna sem nome
resp$Gene = row.names(resp)
head(resp)
head(rato)

nomes = rato$Gene
length(nomes)

bd <- resp %>% filter(Gene %in% nomes)
head(bd)

