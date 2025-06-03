Algoritmo "CriancaEsperanca"
// Definir o nome do programa
Var
// Seção de Declarações das variáveis 
D:inteiro
valor:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("-----------------------------------")
escreval("CRIANÇA EPERANÇA")
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
             escreva("Qual o valor da doação? R$")
             leia(valor)
             
        Caso 5
             valor <- 0
        FimEscolha
        escreval("-----------------------------------")
        escreval("SUA DOAÇÃO FOI DE R$", valor)
        escreval("MUITO OBRIGADO!")
        escreval("-----------------------------------")
        
Fimalgoritmo