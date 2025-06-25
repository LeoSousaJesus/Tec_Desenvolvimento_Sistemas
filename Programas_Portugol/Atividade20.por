programa {
    funcao inicio() {
        inteiro numero
        
        faca {
            escreva("Digite um número entre 1 e 10: ")
            leia(numero)
            
            se (numero < 1 ou numero > 10) {
                escreva("Número inválido! ")
            }
        } enquanto (numero < 1 ou numero > 10)
        
        se (numero == 5) {
            escreva("Você acertou!")
        }
    }
}