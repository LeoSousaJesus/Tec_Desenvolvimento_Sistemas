Algoritmo "SOMAFuncao"
// Disciplina   : [Linguagem e Lógica de Programação]

Var
// Seção de Declarações das variáveis 
    V1, V2, S: inteiro
    
Funcao Soma(X,Y: inteiro):inteiro
Inicio
      retorne X + Y
FimFuncao

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
      escreva("Digite o primeiro valor: ")
      leia(V1)
      escreva("Digite o segundo valor: ")
      leia(V2)
      S := Soma(V1,V2)
      escreval("A soma entre ", V1, "e", V2, " é igual a ", S)
Fimalgoritmo