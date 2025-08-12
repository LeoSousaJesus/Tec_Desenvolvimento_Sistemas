programa {

  funcao inicio(){
    inteiro valorAapagar, valorFrete[4] ,res, frete
    valorFrete[0] = 25
    valorFrete[1] = 20
    valorFrete[2] = 15
    valorFrete[3] = 10
    
    escreva(".............................LOJA DE LIVROS...........................\n")
    escreva("\n Qual o valor que o cliente vai pagar? \n")
    leia(valorAapagar)

    escreva("Escolha a opçao do frete:\n")
    escreva("0 = 25 reais, até 3 dias uteis \n")
    escreva("1 = 20 reais, até 5 dias uteis \n")
    escreva("2 = 15 reais, até 7 dias uteis \n")
    escreva("3 = 10 reais, até 10 dias uteis \n")
    leia(frete)

    escolha(frete)  
{  
    caso 0:  
         res = valorAapagar + valorFrete[0]
         escreva("A taxa do frete foi: ",valorFrete[0],"\n","e o valor total é: ",res)
       
    pare  
  
    caso 1:  
         res = valorAapagar + valorFrete[1]
         escreva("A taxa do frete foi: ",valorFrete[1],"\n","e o valor total é: ",res)
    pare  
      
    caso 2:  
         res = valorAapagar + valorFrete[2]
         escreva("A taxa do frete foi: ",valorFrete[2],"\n","e o valor total é: ",res) 
    pare

    caso 3:  
         res = valorAapagar + valorFrete[3]
         escreva("A taxa do frete foi: ",valorFrete[3],"\n","e o valor total é: ",res) 
    pare 
    caso contrario:
    escreva("Ta errado seu tapado...")
      
    
}  
    

  }
}