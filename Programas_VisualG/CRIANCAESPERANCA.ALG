Algoritmo "CriancaEsperanca"
// Definir o nome do programa
Var
// Se��o de Declara��es das vari�veis 
D:inteiro
valor:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("-----------------------------------")
escreval("CRIAN�A EPERAN�A")
escreval("-----------------------------------")
escreval(" Muito obrigado por ajudar! ")
escreval("[1] Para doar R$ 10 reais ")
escreval("[2] Para doar R$ 25 reais ")
escreval("[3] Para doar R$ 50 reais ")
escreval("[4] Para doar outros valores ")
escreval("[5] Para cancelar ")
leia(D)
Escolha D
        Caso 1
        valor <- 10
        
        Caso 2
        valor <- 25
        
        Caso 3
        valor <- 50
        
        Caso 4
             escreva("Qual o valor da doa��o? R$")
             leia(valor)
             
        Caso 5
             valor <- 0
        FimEscolha
        escreval("-----------------------------------")
        escreval("SUA DOA��O FOI DE R$", valor)
        escreval("MUITO OBRIGADO!")
        escreval("-----------------------------------")
        
Fimalgoritmo