programa {
    funcao cadeia ParImpar() {
        inteiro numero
        
        escreva("Digite um número: ")
        leia(numero)
        
        se (numero % 2 == 0) {
            retorne "PAR"
        } senao {
            retorne "ÍMPAR"
        }
    }

    funcao inicio() {
        cadeia resultado = ParImpar()
        escreva("\nO número é: ", resultado)
    }
}