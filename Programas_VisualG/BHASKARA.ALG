Algoritmo "Bhaskara"
// Definir o nome do Algoritmo

Var
// Se��o de Declara��es das vari�veis 
a,b,c:real
delta,xLinha, x2Linhas: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreval("Digite o valor de a: ")
   leia(a)

   escreval("Digite o valor de b: ")
   leia(b)
   
   escreval("Digite o valor de c: ")
   leia(c)
   
   delta := (b * b) - (4 * a * c)

   se delta < 0 entao
      escreval("N�o existem ra�zes reais.")
   senao
      xLinha := (-b + raizq(delta)) / (2 * a)
      x2Linhas := (-b - raizq(delta)) / (2 * a)

      escreval("As ra�zes da equa��o s�o:")
      escreval("x Linha � igual a: ", xLinha)
      escreval("x 2 Linhas � igual a: ", x2Linhas)
   fimse
Fimalgoritmo