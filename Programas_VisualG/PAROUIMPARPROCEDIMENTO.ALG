Algoritmo "ParouImparProcedimento"
// Disciplina   : [Linguagem e Lógica de Programação]


Var
// Seção de Declarações das variáveis
 N: Inteiro
 
 
Procedimento  VerificarParImpar(a:inteiro)
Inicio
Escreva("Digite um valor: ")
Leia(a)
   se (a % 2 = 0) entao
      escreva("O número ", a, " ? PAR")
   senao
      escreva("O número ", a, " ? IMPAR")
   fimse
FimProcedimento

Inicio
       VerificarParImpar(N)
       
Fimalgoritmo