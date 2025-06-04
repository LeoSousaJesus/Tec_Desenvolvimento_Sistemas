Algoritmo "FuncaoPARouImpar"
// Disciplina   : [Linguagem e Lógica de Programação]

Var
// Seção de Declarações das variáveis 
Numero: inteiro
X:inteiro

Funcao Verificar(Numero:inteiro):inteiro
inicio
      retorne(X:=Numero)
FimFuncao

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Digite um número: ")
        leia(Numero)

        se (Numero % 2 = 0) entao
           escreva("O número ", Numero, " é PAR")
        senao
             escreva("O número ", Numero, " é IMPAR")
        fimse
Fimalgoritmo