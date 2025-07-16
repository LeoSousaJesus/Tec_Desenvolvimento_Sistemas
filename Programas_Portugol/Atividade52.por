/*
  Crie um algoritmo que peça ao usuário que informe 5 números inteiros, armazene-os em um vetor e mostre todos os elementos que são números primos.
  Observação: Um número é considerado primo se ele é divisível por 1 e por ele mesmo (O número 1 não é um número primo, pois ele tem apenas um divisor).
*/

programa
{
    funcao inicio() {
        inteiro vetor[5]
        inteiro i
        
        escreva("Digite 5 números inteiros:\n")
        
        para (i = 0; i < 5; i++) {
            escreva("Número ", i+1, ": ")
            leia(vetor[i])
        }
        
        escreva("\nNúmeros primos no vetor: ")
        logico encontrouPrimo = falso
        
        para (i = 0; i < 5; i++) {
            se (Primo(vetor[i])) {
                se (encontrouPrimo) {
                    escreva(", ")
                }
                escreva(vetor[i])
                encontrouPrimo = verdadeiro
            }
        }
        
        se (nao encontrouPrimo) {
            escreva("Nenhum número primo encontrado")
        }
        escreva("\n")
    }

    funcao logico Primo(inteiro n) {
        se (n <= 1) {
            retorne falso
        }
        
        para (inteiro i = 2; i <= n/2; i++) {
            se (n % i == 0) {
                retorne falso
            }
        }
        retorne verdadeiro
    }
}