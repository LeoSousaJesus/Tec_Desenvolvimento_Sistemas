Algoritmo "SOMAFuncao"
// Disciplina   : [Linguagem e L�gica de Programa��o]

Var
// Se��o de Declara��es das vari�veis 
    V1, V2, S: inteiro
    
Funcao Soma(X,Y: inteiro):inteiro
Inicio
      retorne X + Y
FimFuncao

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
      escreva("Digite o primeiro valor: ")
      leia(V1)
      escreva("Digite o segundo valor: ")
      leia(V2)
      S := Soma(V1,V2)
      escreval("A soma entre ", V1, "e", V2, " � igual a ", S)
Fimalgoritmo