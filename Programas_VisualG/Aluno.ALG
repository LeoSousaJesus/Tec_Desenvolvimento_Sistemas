Algoritmo "Aluno"
// Definir nome do programa
Var
// Seção de Declarações das variáveis 
n1,n2,media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Primeira Nota: ")
   leia(n1)
   
   escreva("Segunda Nota: ")
   leia(n2)
   
   media := (n1+n2)/2
   escreval("A média do aluno foi ", media)
   se (media >= 7) entao
      escreval("Aluno APROVADO")
   senao
        se (media >= 5) (media < 7) entao
           escreval("Aluno em RECUPERAÇÃO")
        senao
             escreval("Aluno REPROVADO")
        fimse
   fimse
   
Fimalgoritmo