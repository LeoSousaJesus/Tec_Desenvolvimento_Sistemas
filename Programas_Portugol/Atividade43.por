programa
{
    funcao inicio()
    {
        inteiro vetor[10]
        inteiro divisor
        logico encontrou = falso
        
        // Leitura do vetor
        escreva("Digite 10 números inteiros:\n")
        para (inteiro i = 0; i < 10; i++) {
            escreva("Número ", i + 1, ": ")
            leia(vetor[i])
        }
        
        // Leitura do divisor
        faca {
            escreva("\nInforme um valor inteiro positivo para verificar divisibilidade: ")
            leia(divisor)
        } enquanto (divisor <= 0)  // Garante que o divisor seja positivo
        
        // Verificação dos números divisíveis
        escreva("\nValor informado: ", divisor, "\n")
        escreva("Os números que são divisíveis por ", divisor, " são: ")
        
        para (inteiro i = 0; i < 10; i++) {
            se (vetor[i] % divisor == 0) {
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
