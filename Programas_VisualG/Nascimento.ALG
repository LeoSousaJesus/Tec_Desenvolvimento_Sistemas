Algoritmo "Nascimento"
// Definir o nome do programa

Var
// Se��o de Declara��es das vari�veis 
ano, nascimento, idade: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Em que ano estamos? ")
   leia(ano)
   
   escreva("Em que ano voc� nasceu? ")
   leia(nascimento)
   
   idade := ano - nascimento
   escreva("Em",ano," voc� ter� ", idade)
   se (idade>=21) entao
      escreval(" e j� ter� atigindo a maioridade")

fimse
Fimalgoritmo