Algoritmo "ProcedimentoBhaskara"
// Disciplina   : [Linguagem e Lógica de Programação]

Var
// Seção de Declarações das variáveis 

a,b,c:real
delta,xLinha, x2Linhas: real

Procedimento Bhaskara(a,b,c,delta,xLinha,x2Linhas: real)
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor de a: ")
   leia(a)

   escreval("Digite o valor de b: ")
   leia(b)

   escreval("Digite o valor de c: ")
   leia(c)

   delta := (b^2) - 4 * a * c

   se delta < 0 entao
      escreval("Não existem raízes reais.")
   senao
      xLinha := (-b + raizq(delta)) / (2 * a)
      x2Linhas := (-b - raizq(delta)) / (2 * a)

      escreval("As raízes da equações são: ")
      escreval("x Linha é igual a: ", xLinha)
      escreval("x 2 Linhas é igual a: ", x2Linhas)
   fimse
FimProcedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
       Bhaskara(a,b,c,delta,xLinha, x2Linhas)


Fimalgoritmo