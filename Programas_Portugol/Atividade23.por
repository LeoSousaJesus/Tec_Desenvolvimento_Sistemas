programa {
    funcao inicio() {
        // Declaração de variáveis
        cadeia pergunta
        
        // Entrada de dados
        escreva("Necessita de atendimento prioritário? (sim/não): ")
        leia(pergunta)
      
        se (pergunta == "sim") {
            escreva("\n Vá para os caixas 1, 2 e 3 (atendimento prioritário)")
        } senao {
            escreva("\n Vá para qualquer caixa, menos os caixas 1, 2 e 3, que são para atendimento prioritário")
        }
    }
}