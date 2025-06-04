Algoritmo "SOMAFuncao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/06/2025
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