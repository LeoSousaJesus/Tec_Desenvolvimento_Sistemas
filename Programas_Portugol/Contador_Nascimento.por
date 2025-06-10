programa {
  funcao inicio() {
    inteiro totalDiasNascimento = 0, diasNascimento, contador
    contador = 1
    enquanto(contador <=30){
      escreva("Digite a quantidade de dias do recém-nascido: ")
      leia(diasNascimento)
      totalDiasNascimento = totalDiasNascimento + diasNascimento contador++
    }
      escreva("\nMédia dos bebês vacinados no dia foi de : ", totalDiasNascimento/30 ," dias.")

  }
}
