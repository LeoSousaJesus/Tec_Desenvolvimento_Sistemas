programa {
    funcao cadeia Maior(real num1, real num2) {
        se (num1 > num2) {
            escreva("O primeiro número ", num1, " é maior que o segundo número ", num2, "\n")
        } senao se (num2 > num1) {
            escreva("O segundo número ", num2, " é maior que o primeiro número ", num1, "\n")
        } senao {
            escreva("Os números são iguais (", num1, " = ", num2, ")\n")
            retorne (" ")
        }
    }

    funcao inicio() {
        real numero1, numero2
        
        escreva("*** VERIFICAR O MAIOR NÚMERO ***\n")
        escreva("Digite o primeiro número: ")
        leia(numero1) 
        escreva("Digite o segundo número: ")
        leia(numero2)
        
        Maior(numero1, numero2)
    }
}