programa {
    funcao inicio() {
        // Declaração de variável
        caracter opcao
        
        // Menu de opções
        escreva("L - Laranja\n")
        escreva("M - Morango\n")
        escreva("A - Acerola\n")
        escreva("U - Uva\n")
        escreva("Digite a letra correspondente ao suco desejado: ")
        
        // Leitura da opção
        leia(opcao)
        
        escolha (opcao) {
            caso 'L':
                escreva("\nVocê escolheu Suco de Laranja. Rico em Vitamina C!")
                pare
                
            caso 'M':
                escreva("\nVocê escolheu Suco de Morango. Rico em Vitamina A!")
                pare
                
            caso 'A':
                escreva("\nVocê escolheu Suco de Acerola. Rico em Vitamina C!")
                pare
                
            caso 'U':
                escreva("\nVocê escolheu Suco de Uva. Rico em Vitamina E!")
                pare
                
            caso contrario:
                escreva("\nOpção inválida! Por favor, digite L, M, A ou U.")
        }
    }
}