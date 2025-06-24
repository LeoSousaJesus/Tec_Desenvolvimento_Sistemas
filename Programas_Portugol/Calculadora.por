/*
  Faça um algoritmo que simule as operações básicas de uma calculadora.
O usuário deverá informar 2 números reais e escolher entre as 4 operações básicas
(soma, subtração, multiplicação, divisão) e o programa deverá retornar o resultado do
cálculo escolhido.
*/

programa {
    funcao inicio() {
        // Declaração de variáveis
        real numero1, numero2, resultado
        cadeia operador
        logico operacaoValida = verdadeiro
        
        // Interface do usuário
        escreva("╔══════════════════════════╗\n")
        escreva("║      CALCULADORA 1.0     ║\n")
        escreva("╚══════════════════════════╝\n\n")
        
        // Entrada de dados
        escreva("Digite o primeiro número: ")
        leia(numero1)
        
        escreva("Digite o segundo número: ")
        leia(numero2)
        
        escreva("Operação desejada (+ - * /): ")
        leia(operador)
        
        // Cálculos com tratamento de erros
        se (operador == "+") {
            resultado = numero1 + numero2
        } senao se (operador == "-") {
            resultado = numero1 - numero2
        } senao se (operador == "*") {
            resultado = numero1 * numero2
        } senao se (operador == "/") {
            se (numero2 == 0) {
                escreva("\nErro: Não é possível dividir por zero!\n")
                operacaoValida = falso
            } senao {
                resultado = numero1 / numero2
            }
        } senao {
            escreva("\nErro: Operação inválida! Use apenas + - * /\n")
            operacaoValida = falso
        }
        
        // Saída do resultado
        se (operacaoValida) {
            escreva("\n", numero1, " ", operador, " ", numero2, " = ", resultado, "\n")
        }
        
        escreva("\nFim da operação.\n")
    }
}