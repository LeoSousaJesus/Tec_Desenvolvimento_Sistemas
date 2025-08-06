programa {
    inteiro numero1, numero2
    real resultado
    caracter opcao
    
    // Funções
    funcao somar() {
        resultado = numero1 + numero2
    }
    
    funcao subtrair() {
        resultado = numero1 - numero2
    }
    
    funcao multiplicar() {
        resultado = numero1 * numero2
    }
    
    funcao dividir() {
        se (numero2 != 0) {
            resultado = numero1 / numero2
        } senao {
            escreva("\nErro: Divisão por zero!\n")
            resultado = 0
        }
    }
    
    funcao exibirMenu() {
        escreva("\n=== CALCULADORA ===\n")
        escreva("1 - Somar\n")
        escreva("2 - Subtrair\n")
        escreva("3 - Multiplicar\n")
        escreva("4 - Dividir\n")
        escreva("5 - Sair\n")
        escreva("Escolha uma opção: ")
    }

    funcao inicio() {
        escreva("Digite o primeiro número: ")
        leia(numero1)
        escreva("Digite o segundo número: ")
        leia(numero2)
        
        faca {
            exibirMenu()
            leia(opcao)
            
            escolha (opcao) {
                caso '1':
                    somar()
                    escreva("\nResultado: ", numero1, " + ", numero2, " = ", resultado, "\n")
                    pare
                    
                caso '2':
                    subtrair()
                    escreva("\nResultado: ", numero1, " - ", numero2, " = ", resultado, "\n")
                    pare
                    
                caso '3':
                    multiplicar()
                    escreva("\nResultado: ", numero1, " × ", numero2, " = ", resultado, "\n")
                    pare
                    
                caso '4':
                    dividir()
                    se (numero2 != 0) {
                        escreva("\nResultado: ", numero1, " ÷ ", numero2, " = ", resultado, "\n")
                    }
                    pare
                    
                caso '5':
                    escreva("\nCalculadora encerrada. Até logo!\n")
                    pare
                    
                caso contrario:
                    escreva("\nOpção inválida! Digite de 1 a 5.\n")
            }
        } enquanto (opcao != '5')
    }
}