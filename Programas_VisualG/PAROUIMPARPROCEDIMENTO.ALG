Algoritmo "ParouImparProcedimento"
// Disciplina   : [Linguagem e L�gica de Programa��o]


Var
// Se��o de Declara��es das vari�veis
 N: Inteiro
 
 
Procedimento  VerificarParImpar(a:inteiro)
Inicio
Escreva("Digite um valor: ")
Leia(a)
   se (a % 2 = 0) entao
      escreva("O n�mero ", a, " ? PAR")
   senao
      escreva("O n�mero ", a, " ? IMPAR")
   fimse
FimProcedimento

Inicio
       VerificarParImpar(N)
       
Fimalgoritmo