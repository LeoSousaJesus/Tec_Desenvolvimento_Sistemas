//FUNÇÃO COM RETORNO
 programa{
   funcao inteiro soma(){
     inteiro n1,n2
     n1 = 10
     n2 = 20
     retorne n1 + n2 // a diferenca que o retorno vai ser ja a soma retornando.
   }
   funcao inicio(){
           inteiro resultado // e tambem que deve ser declaro uma variavel para poder retornar
           resultado = soma()
           escreva("Resultado = ",resultado)
     escreva("Resultado = ",soma()) //Aqui da para fazer direto sem declarar uma variavel
   }
}