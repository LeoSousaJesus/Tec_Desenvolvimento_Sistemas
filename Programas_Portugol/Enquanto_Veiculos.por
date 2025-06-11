programa {
  funcao inicio() {
    real velocidadeVeiculo
    cadeia continuarRepetindo ="sim"
    inteiro qtdVelocidadeMedida = 0 ,qtdMultas = 0
    enquanto(continuarRepetindo == "sim"){
        escreva("Digite a velocidade: ")
        leia(velocidadeVeiculo)
        
        se(velocidadeVeiculo > 120.00){
        qtdMultas++
        }
        qtdVelocidadeMedida++
        escreva("Digite sim para ler outra velocidade ou não para sair: ")
        leia(continuarRepetindo)
      }
      escreva("Total de veículo(s): ", qtdVelocidadeMedida , ".\nVeículo(s) multado(s): ", qtdMultas, "." )
  }
}
