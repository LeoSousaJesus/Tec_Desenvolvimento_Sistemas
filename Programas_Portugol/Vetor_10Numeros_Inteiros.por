programa {
    funcao inicio() {

        // Declaração das variáveis
        inteiro vetor[10], valor, i
        logico encontrou = falso
        
        escreva("Digite 10 números inteiros:\n")

        para (i = 0; i < 10; i++) {
            escreva("Digite o ", i+1, "º número: ")
            leia(vetor[i])
        }
        
        limpa()

        faca {
            escreva("\nDigite um valor inteiro positivo para verificar a divisibilidade: ")
            leia(valor)
            
            se (vetor[i] > 0) {
                escreva("Valor inválido! Digite um número positivo.\n")
            }
        } enquanto (valor <= 0)
        
        escreva("\nValor informado: ", valor, "\n")
        escreva("Os números que são divisíveis por ", valor, " são: ")
        
        para (i = 0; i < 10; i++) {
            se (vetor[i] % valor == 0) {
                se (encontrou) {
                    escreva(", ")
                }
                escreva(vetor[i])
                encontrou = verdadeiro
            }
        }
        
        se (nao encontrou) {
            escreva("nenhum número do vetor")
        }
        
        escreva(".\n")
    }
}
