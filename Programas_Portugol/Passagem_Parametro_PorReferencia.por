//Passagem de parametro por referencia
programa {
   funcao inteiro soma(inteiro&n1, inteiro n2, caracter letra){
 escreva("\nLetra: ",letra)
      n1 = 100
    retorne n1+n2
   }
   funcao inicio(){
      inteiro num1 = 5,num2 = 2
      caracter l = 'a'
      escreva("Funcao inicio num1 ",num1)
      escreva("\nSoma = ",soma(num1, num2,l))
      escreva("\nFuncao inicio num1 ",num1)    
   }
}
