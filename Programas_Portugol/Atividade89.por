/*
  Crie um algoritmo que receba do usuário um número inteiro e exiba a sequência de Fibonacci pela quantidade de vezes informada pelo usuário.
*/


programa {
    funcao inicio() {
        inteiro quantidade, anterior = 0, atual = 1, proximo, i
        
        escreva("Digite o número de termos da sequência de Fibonacci que deseja gerar: ")
        leia(quantidade)
        
        se (quantidade <= 0) {
            escreva("Por favor, digite um número positivo maior que zero!")
            retorne
        }
        
        escreva("\nSequência de Fibonacci com ", quantidade, " termos:\n")
        
        para (i = 1; i <= quantidade; i++) {
            se (i == 1) {
                escreva(anterior)
            } senao se (i == 2) {
                escreva(", ", atual)
            } senao {
                proximo = anterior + atual
                escreva(", ", proximo)
                anterior = atual
                atual = proximo
            }
        }
    }
}
