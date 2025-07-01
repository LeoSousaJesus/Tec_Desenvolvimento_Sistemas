// Passagem de parâmetro por valor
 programa{
   funcao inteiro soma(inteiro n1, inteiro n2, caracter letra ){// aqui sao declaradas dentro do parenteses
   escreva("\nLetra ",letra)
   retorne n1+n2
   }
   funcao inicio(){
     inteiro num1 = 5, num2 = 2
     caracter l = 'a'
     escreva("\nSoma = ",soma(num1,num2,l))
   }
 }