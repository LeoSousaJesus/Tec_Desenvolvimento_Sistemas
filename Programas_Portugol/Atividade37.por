/* Crie um programa para ler N números até que a soma dos números seja maior ou igual a 100. Apresente a quantidade de números digitados 
para alcançar a soma maior ou igual a 100. Utilize a estrutura de repetição "enquanto".
*/

programa {
    funcao inicio() {
        // Declaração de variáveis
        real numero, soma = 0.0
        inteiro quantidade = 0
        
        escreva("=== SOMA ACUMULATIVA ===\n")
        escreva("Digite números até que a soma atinja ou ultrapasse 100\n\n")
        
        // Loop enquanto a soma for menor que 100
        enquanto (soma < 100) {
            escreva("Digite um número: ")
            leia(numero)
            
            soma += numero  // Acumulando a soma
            quantidade++    // Contando a quantidade de números
            
            escreva("Soma atual: ", soma, " (", quantidade, " números digitados)\n\n")
        }
        
        escreva("\n=== RESULTADO ===\n")
        escreva("Soma final: ", soma, "\n")
        escreva("Quantidade de números digitados: ", quantidade)
    }
}