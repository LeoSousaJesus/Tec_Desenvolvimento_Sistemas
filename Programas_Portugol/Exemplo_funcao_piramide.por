programa {
    // Função para desenhar uma pirâmide de asteriscos
    funcao desenhar_piramide() {
        para (inteiro i = 1; i <= 5; i++) {
            // Espaços antes dos asteriscos
            para (inteiro j = 1; j <= 5 - i; j++) {
                escreva(" ")
            }
            
            // Asteriscos
            para (inteiro k = 1; k <= 2 * i - 1; k++) {
                escreva("*")
            }
            
            escreva("\n")
        }
    }

    funcao inicio() {
        desenhar_piramide()
    }
}
