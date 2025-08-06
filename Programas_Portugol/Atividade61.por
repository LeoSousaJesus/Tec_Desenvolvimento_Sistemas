programa {
    funcao cadeia Maior(real numero1, real numero2) {
        se (numero1 > numero2) {
            escreva("O primeiro número ", numero1, " é maior que o segundo número ", numero2, "\n")
        } senao se (numero2 > numero1) {
            escreva("O segundo número ", numero2, " é maior que o primeiro número ", numero1, "\n")
        } senao {
            escreva("Os números são iguais\n")
            retorne " "
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