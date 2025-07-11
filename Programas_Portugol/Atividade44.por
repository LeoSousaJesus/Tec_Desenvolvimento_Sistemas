programa
{
    funcao inicio()
    {
        inteiro vetor[5]
        inteiro temp, i, j
        
        // Leitura do vetor
        escreva("Digite 5 números inteiros:\n")
        para (i = 0; i < 5; i++) {
            escreva("Posição ", i, ": ")
            leia(vetor[i])
        }
        
        // Exibe o vetor original
        escreva("\nVetor original:\n")
        para (i = 0; i < 5; i++) {
            escreva("| ", vetor[i], " ")
        }
        escreva("|\n")
        
        // Inverte o vetor
        i = 0
        j = 4
        enquanto (i < j) {
            temp = vetor[i]
            vetor[i] = vetor[j]
            vetor[j] = temp
            i++
            j--
        }
        
        // Exibe o vetor invertido
        escreva("\nVetor invertido:\n")
        para (i = 0; i < 5; i++) {
            escreva("| ", vetor[i], " ")
        }
        escreva("|\n")
    }
}