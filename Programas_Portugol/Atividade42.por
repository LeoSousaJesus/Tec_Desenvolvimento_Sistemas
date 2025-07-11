programa
{
    funcao inicio()
    {
        inteiro vetor[10]
        inteiro soma = 0
        
        escreva("Digite 10 números inteiros:\n")
        
        // Preenche o vetor com os valores informados pelo usuário
        para (inteiro i = 0; i < 10; i++) {
            escreva("Número ", i + 1, ": ")
            leia(vetor[i])
            soma = soma + vetor[i]  // Acumula a soma
        }
        
        // Exibe o resultado
        escreva("\nA soma de todos os valores do vetor é: ", soma)
    }
}