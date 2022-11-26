dados<-data.frame(paciente=seq(1,8,by=1), 
                  peso=c(55,61,75,85,96,100,56,61), 
                  altura=c(1.71,1.65,1.70,1.8,1.81,1.75,1.65,1.75),
                  circ_cintura=c(73,69,85,80,85,85,69,68), 
                  circ_quadril=c(90,91,96,93,94,98,89,90))  # Cria a tabela de dados e armazena em um objeto
dados # Mostra o objeto criado

dados$IMC<-dados$peso/(dados$altura^2) # IMC = peso/altura²
dados$RCQ<-dados$circ_cintura/dados$circ_quadril # RCQ = cintura/quadril
dados # Mostra o objeto criado

media<-mean(dados$IMC) # Obtém a média das observações
desvio<-sd(dados$IMC) # Obtém o desvio das observações
LS<-media+desvio # Obtenção do limite superior utilizado
LI<-media-desvio # Obtenção do limite inferior utilizado
LS # Mostra o valor do limite superior
LI # Mostra o valor do limite inferior

dados$classe<-ifelse(dados$IMC>LS, "Alto", ifelse(dados$IMC<LI, "Baixo","Médio")) # Crio a nova coluna categórica
dados # Visualizar os dados com a coluna adicional

dados$dist<-dados$IMC-media
dados
hist(dados$dist)
plot(dados$IMC,dados$RQC)
cor(dados$IMC,dados$RCQ)