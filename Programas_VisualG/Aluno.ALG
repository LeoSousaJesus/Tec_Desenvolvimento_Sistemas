Algoritmo "Aluno"
// Definir nome do programa
Var
// Se��o de Declara��es das vari�veis 
n1,n2,media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Primeira Nota: ")
   leia(n1)
   
   escreva("Segunda Nota: ")
   leia(n2)
   
   media := (n1+n2)/2
   escreval("A m�dia do aluno foi ", media)
   se (media >= 7) entao
      escreval("Aluno APROVADO")
   senao
        se (media >= 5) (media < 7) entao
           escreval("Aluno em RECUPERA��O")
        senao
             escreval("Aluno REPROVADO")
        fimse
   fimse
   
Fimalgoritmo