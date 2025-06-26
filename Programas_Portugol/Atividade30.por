programa {
    funcao inicio() {
        caracter letra
        
        escreva("Digite uma letra: ")
        leia(letra)
        
        escolha (letra) {
            caso 'a': caso 'e': caso 'i': caso 'o': caso 'u':
                escreva("Vogal")
                pare
            caso contrario:    
                escreva("Não é vogal")
        }
    }
}