programa {
  funcao inicio() {
    inteiro totalDiasNascimento = 0, diasNascimento, qtdVacinas = 0
    cadeia continuar = "sim"
      enquanto(continuar == "sim"){
        escreva("Digite a quantidade de dias do recém-nascido: ")
        leia(diasNascimento)

        totalDiasNascimento = totalDiasNascimento + diasNascimento qtdVacinas++
          escreva("Digite sim para continuar e não para sair do programa: ")
          leia(continuar)
      }
      escreva("\nMédias dos bebês vacinados no dia foi de : ",totalDiasNascimento/qtdVacinas )
  }
}
