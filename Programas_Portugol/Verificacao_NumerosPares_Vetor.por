programa{
    funcao inicio() {
        inteiro vetor[6]
        inteiro par = 0
        
        escreva("Digite 6 números inteiros:\n")
        
        // Armazenando 6 números no vetor
        para(inteiro i = 0; i < 6; i++) {
            escreva("Número ", i+1, ": ")
            leia(vetor[i])
            
            // Verificação do número par
            se(vetor[i] % 2 == 0) {
                par++
            }
        }
        
        // Exibição do vetor
        escreva("\nVetor: ")
        para(inteiro i = 0; i < 6; i++) {
            escreva(vetor[i])
            se(i < 5) escreva(", ")
        }
        escreva(" ")
        
        // Exibição da quantidade de pares
        escreva("\nNúmeros pares: ", par)
    }
}