programa {
    funcao inicio() {
        // Declaração das variáveis
        inteiro num1, num2, num3
        inteiro menor, meio, maior
        
        // Entrada dos números
        escreva("Digite três números inteiros:\n")
        escreva("Primeiro número: ")
        leia(num1)
        escreva("Segundo número: ")
        leia(num2)
        escreva("Terceiro número: ")
        leia(num3)
        
        // Ordenação dos números
        se (num1 < num2 e num1 < num3) {
            menor = num1
            se (num2 < num3) {
                meio = num2
                maior = num3
            } senao {
                meio = num3
                maior = num2
            }
        } senao se (num2 < num1 e num2 < num3) {
            menor = num2
            se (num1 < num3) {
                meio = num1
                maior = num3
            } senao {
                meio = num3
                maior = num1
            }
        } senao {
            menor = num3
            se (num1 < num2) {
                meio = num1
                maior = num2
            } senao {
                meio = num2
                maior = num1
            }
        }
        
        // Exibição dos números ordenados
        escreva("\nNúmeros em ordem crescente: ", menor, ", ", meio, ", ", maior)
    }
}