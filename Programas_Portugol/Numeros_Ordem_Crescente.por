programa {

  funcao crescente (inteiro &numero[]) {
    inteiro i, aux, troca=1

    enquanto (troca==1) {
      troca = 0

      para(i =  0; i < 4; i ++) {
        se(numero[i] > numero[i+1] ){
          aux = numero[i]
          numero[i] = numero[i+1]
          numero[i+1] = aux
          troca = 1
           
        }
      }
    }

  }

  funcao inicio() {
    inteiro numero[5]

    para (inteiro i = 0; i < 5; i++) {
      escreva("Indique o ", i + 1," numero: ")
      leia(numero[i])
    }
   crescente(numero)
      para (inteiro i=0; i < 5; i ++) {
        escreva(i + 1,"- ", numero[i]," | ")
      }
  }
}
