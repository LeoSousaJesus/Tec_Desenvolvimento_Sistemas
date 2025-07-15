programa
{
    funcao inicio()
    {
        inteiro vetor[10] // Aqui o vetor deve ir até 10
        inteiro soma = 0
        
        escreva("Digite 10 números inteiros:\n") 
        
        para (inteiro i = 0; i < 10; i++) {// inicia no indice 0 e vai até o indice 9
            escreva("Número ", i + 1, ": ")
            leia(vetor[i])
            soma = soma + vetor[i] // A soma é igual soma + vetor que está guardando os 10 números na variavel i
        }
        
        escreva("\nA soma de todos os valores do vetor é: ", soma)
    }
}