programa {
  funcao inicio() {
    //Você vai à praia se o tempo estiver com sol e você não tiver prova no final de semana

    cadeia previsaoTempo
    caracter temProva

    escreva("Digite a previsão do tempo para o final de semana (sol ou chuva): ")
    leia(previsaoTempo)

    escreva("Digite s ou n para indicar se terá prova no final de semana:")
    leia(temProva)

    se (previsaoTempo == "sol" e temProva == 'n')
    {
      escreva("Obá, você vai à praia no final de semana.")
}
    senao{
      escreva("Infelizmente você não vai à praia no final de semana.")
    }
  }
}
