programa {
  funcao inicio() {
   inteiro paes, queijo, bisnaga, paoDeForma, leite, paoDoce, suspiro
    real precoPao, precoQueijo, precoBisnaga, precoPaoDeForma, precoLeite, precoPaoDoce, precoSuspiro
    real totalCompra, desconto, valorFinal

    precoPao = 1.0
    precoQueijo = 4.0
    precoBisnaga = 2.50
    precoPaoDeForma = 5.0
    precoLeite = 3.0
    precoPaoDoce = 1.80
    precoSuspiro = 2.00

    totalCompra = 0
    desconto = 0
    escreva("=== Padaria do seu Zé ===\n")
    escreva("Quantos pães você comprou? \n")
    leia(paes)
    escreva("Quantos queijos você comprou? \n")
    leia(queijo)
    escreva("Quantas bisnagas você comprou? \n")
    leia(bisnaga)
    escreva("Quantos pães de forma você comprou? \n")
    leia(paoDeForma)
    escreva("Quantos leites você comprou? \n")
    leia(leite)
    escreva("Quantos pães doces você comprou? \n")
    leia(paoDoce)
    escreva("Quantos suspiros você comprou? \n")
    leia(suspiro)

    totalCompra = (paes * precoPao) + (queijo * precoQueijo) + (bisnaga * precoBisnaga) +
                  (paoDeForma * precoPaoDeForma) + (leite * precoLeite) + (paoDoce * precoPaoDoce) +
                  (suspiro * precoSuspiro)

    se (paes >= 10 e queijo >= 1) {
        desconto = 10
    }
    senao {
        // Desconto de 15% para bisnaga ou pão de forma
        se (bisnaga >= 1 ou paoDeForma >= 1) {
            desconto = 15
        }
        senao {
            // Desconto de 5% para leite e pão doce ou suspiro
            se (leite >= 1 e paoDoce >= 1 ou suspiro >= 1) {
                desconto = 5
            }
        }
    }

    valorFinal = totalCompra - (totalCompra * desconto / 100)

    escreva("\nTotal da compra: R$", totalCompra, "\n")
    escreva("Desconto aplicado: ", desconto, "%\n")
    escreva("Valor final com desconto: R$", valorFinal, "\n")

  }
}
