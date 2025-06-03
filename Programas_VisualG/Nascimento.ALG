Algoritmo "Nascimento"
// Definir o nome do programa

Var
// Seção de Declarações das variáveis 
ano, nascimento, idade: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Em que ano estamos? ")
   leia(ano)
   
   escreva("Em que ano você nasceu? ")
   leia(nascimento)
   
   idade := ano - nascimento
   escreva("Em",ano," você terá ", idade)
   se (idade>=21) entao
      escreval(" e já terá atigindo a maioridade")

fimse
Fimalgoritmo