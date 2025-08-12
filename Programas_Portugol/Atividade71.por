programa {
  funcao inicio() {
    inteiro numero

    escreva("Escreva um numero: ")
    leia(numero)

    se(numero>=0) {
        para(inteiro i = numero; i >= 0; i--){
          escreva(i," ")
        }

    }
      senao se(numero < 0){
      para(inteiro i = numero; i >= 0; i++){
        escreva(i," ")
        }

    }
      senao{
      escreva("O numero digitado é zero!!")
    }
  }
}
