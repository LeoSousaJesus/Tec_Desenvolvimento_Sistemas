programa {
    funcao inicio() {
        caracter opcao
        
        escreva("1) Elogio \n")
        escreva("2) Ofensa \n")
        escreva("3) Sair \n\n")
        
        escreva("Escolha uma opção: ")
        leia(opcao)
        
        escolha (opcao) {
            caso '1': 
                escreva("Você é lindo(a)!")
                pare // Impede que as instruções do caso 2 sejam executadas
                
            caso '2': 
                escreva("Você é um monstro!")
                pare
                
            caso '3': 
                escreva("Tchau!")
                pare
                
            caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
                escreva("Opção Inválida!")
        }
        
        escreva("\n")
    }
}
