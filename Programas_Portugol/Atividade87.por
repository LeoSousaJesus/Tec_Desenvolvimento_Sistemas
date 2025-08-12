programa {
  funcao inicio() {
    inteiro volts

    volts = voltagem() 

    escreva("A voltagem é : ",volts)

  }
  funcao inteiro voltagem(){
      inteiro r,i,u

    escreva("Qual o valor da resistência elétrica ? ")
    leia(r)
    escreva("Qual o valor da corrente elétrica? ")
    leia(i)

    u = r * i

    retorne u
  }
}
