/*
  Faça um algoritmo no portugol studio para o usuário tentar acertar um número secreto determinado entre 1 e 100. 
  O usuário deve fornecer sugestões e o programa deve dar feedback (maior, menor) até que ele adivinhe. Quando o usuário acertar o número deve ser exibida a mensagem "Parabéns! Você acertou.", 
  além de exibir o número secreto e a quantidade de tentativas feitas. Utilize a estrutura de repetição "faça enquanto".
*/


programa {

  funcao inicio() {
    inteiro numero, premiado = 7
        
        faca {
            escreva("Informe um numero entre 1 e 100 para participar do sorteio: ")
            leia(numero)
            

            se (numero > 7){
              escreva("Tente outra vez, o número é menor \n")
            }
            senao se(numero < 7){
              escreva("Tente outra vez, o número é maior \n")
            }
            senao se(numero == 7){
              escreva("Só te digo duas palavras PARA - BENS!")
            }
        } enquanto (numero != premiado)
    }
  }

