programa
{
    funcao inicio()
    {
        inteiro vetor[10]
        inteiro multiplicacaoPares = 1  // Inicializa com 1 para multiplicação
        inteiro somaImpares = 0
        inteiro i
        
        // Leitura do vetor
        escreva("Digite 10 números inteiros:\n")
        para (i = 0; i < 10; i++) {
            escreva("Número ", i + 1, ": ")
            leia(vetor[i])
            
            // Verifica se é par ou ímpar e acumula
            se (vetor[i] % 2 == 0) {
                multiplicacaoPares = multiplicacaoPares * vetor[i]
            } senao {
                somaImpares = somaImpares + vetor[i]
            }
        }
        
        // Exibe os resultados
        escreva("\nMultiplicação dos elementos pares: ", multiplicacaoPares, ".\n")
        escreva("Soma dos elementos ímpares: ", somaImpares, ".\n")
    }
}