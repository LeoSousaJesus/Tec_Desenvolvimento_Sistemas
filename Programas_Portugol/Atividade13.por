programa {
    funcao inicio() {
        // Declaração da variável
        inteiro numero
        
        // Primeiro para
        escreva("Contagem de -50 a 50:\n")
        para (numero = -50; numero <= 50; numero++) {
            escreva(numero, " ")
        }
        escreva("\n") 
        
        // Segundo para
        escreva("Contagem de 50 a -50:\n")
        para (numero = 50; numero >= -50; numero--) {
            escreva(numero, " ")
        }
    }
}