Algoritmo "FuncaoPARouImpar"
// Disciplina   : [Linguagem e L�gica de Programa��o]

Var
// Se��o de Declara��es das vari�veis 
Numero: inteiro
X:inteiro

Funcao Verificar(Numero:inteiro):inteiro
inicio
      retorne(X:=Numero)
FimFuncao

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Escreva("Digite um n�mero: ")
        leia(Numero)

        se (Numero % 2 = 0) entao
           escreva("O n�mero ", Numero, " � PAR")
        senao
             escreva("O n�mero ", Numero, " � IMPAR")
        fimse
Fimalgoritmo