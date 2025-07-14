programa
{
    funcao inicio()
    {
        inteiro vetor[8]
        inteiro maior, posicao
        
        escreva("Digite 8 números inteiros:\n")
        
        // Preenche o vetor com os valores informados pelo usuário
        para (inteiro i = 0; i < 8; i++) {
            escreva("Índice ", i + 0, ": ")
            leia(vetor[i])
        }
        
        // Inicializa o maior com o primeiro elemento do vetor
        maior = vetor[0]
        posicao = 0
        
        // Percorre o vetor para encontrar o maior elemento
        para (inteiro i = 1; i < 8; i++) {
            se (vetor[i] > maior) {
                maior = vetor[i]
                posicao = i
            }
        }
        
        escreva("\nO maior valor do vetor informado é ", maior, " e ele se encontra no índice ", posicao, " do vetor.\n")
    }
}