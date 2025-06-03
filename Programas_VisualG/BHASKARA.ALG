Algoritmo "Bhaskara"
// Definir o nome do Algoritmo

Var
// Seção de Declarações das variáveis 
a,b,c:real
delta,xLinha, x2Linhas: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("Digite o valor de a: ")
   leia(a)

   escreval("Digite o valor de b: ")
   leia(b)
   
   escreval("Digite o valor de c: ")
   leia(c)
   
   delta := (b * b) - (4 * a * c)

   se delta < 0 entao
      escreval("Não existem raízes reais.")
   senao
      xLinha := (-b + raizq(delta)) / (2 * a)
      x2Linhas := (-b - raizq(delta)) / (2 * a)

      escreval("As raízes da equação são:")
      escreval("x Linha é igual a: ", xLinha)
      escreval("x 2 Linhas é igual a: ", x2Linhas)
   fimse
Fimalgoritmo