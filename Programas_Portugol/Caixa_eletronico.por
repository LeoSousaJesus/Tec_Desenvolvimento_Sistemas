// Algoritmo do caixa eletrônico

programa {
  funcao inicio() {
    real valorSacado, maiorValorSacado = 0.0, totalValorSacado = 0.0, mediaValorSacado
    inteiro cont

    para (cont = 1; cont <= 10; cont++) {
      escreva("****** Bem-vindo ao Caixa eletrônico ******\n")
      escreva("Qual valor deseja sacar: ")
      leia(valorSacado)

      // Verificar maior valor
      se (cont == 1) {
        maiorValorSacado = valorSacado
      }
      senao {
        se (maiorValorSacado < valorSacado) {
          maiorValorSacado = valorSacado
        }
      }

      // Soma dos valores sacados
      totalValorSacado = totalValorSacado + valorSacado
    }

    mediaValorSacado = totalValorSacado / 10

    escreva("\nRelatório do dia\n")
    escreva("Maior valor sacado: ", maiorValorSacado, "\n")
    escreva("Média do valor sacado: ", mediaValorSacado, "\n")
    escreva("Total de valor sacado: ", totalValorSacado, "\n")
  }
}

