programa {
  funcao inicio() {
    /* # utilização do comando faca enquanto
    
      faca {
       *local da atualização*
      }enquanto (*condição*)

    */

  real velocidadeVeiculo
  cadeia continuarRepetindo
  inteiro qtdVelocidadeMedida = 0 ,qtdMultas = 0
    
    faca{
      escreva("Digite a velocidade: ")
      leia(velocidadeVeiculo)
  
      se(velocidadeVeiculo > 120.00){
        qtdMultas++
        }
        qtdVelocidadeMedida++
        escreva("Digite sim para ler outra velocidade ou não para sair: ")
        leia(continuarRepetindo)

    } enquanto(continuarRepetindo =="sim")
        escreva("Velocidade medida de ", qtdVelocidadeMedida , " veículo(s) e foram multado(s)", qtdMultas , " veículo(s).")
  }
}
