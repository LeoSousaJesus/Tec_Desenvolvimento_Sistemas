programa {
    funcao inicio() {
        // Variáveis
        real saques[10]  // Vetor para armazenar os valores sacados por cada cliente
        real maiorSaque = 0.0
        real totalSacado = 0.0
        real mediaSaque = 0.0
        
        escreva("=== CAIXA ELETRÔNICO ===\n")
        
        // Processamento dos saques
        para (inteiro cliente = 1; cliente <= 10; cliente++) {
            escreva("Cliente ", cliente, " - Digite o valor do saque: R$ ")
            leia(saques[cliente-1])  // Armazena no array (índice 0-9)
            
            // Atualizando o maior saque
            se (saques[cliente-1] > maiorSaque) {
                maiorSaque = saques[cliente-1]
            }
            
            // Acumulando o total
            totalSacado += saques[cliente-1]
        }
        
        // Calculando a média
        mediaSaque = totalSacado / 10
        
        escreva("\n=== RELATÓRIO DIÁRIO ===\n\n")

        escreva("Maior valor sacado: R$ ", maiorSaque, "\n")
        escreva("Média dos saques: R$ ", mediaSaque, "\n")
        escreva("Total sacado no dia: R$ ", totalSacado, "\n")
    }
}