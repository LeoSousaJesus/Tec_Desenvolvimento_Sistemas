programa {
    funcao inicio() {
        // Declaração de variáveis
        inteiro numero
        
        // Entrada de dados
        escreva("===== Programa Tabuada Crescente/Decrescente ===== \n")
        escreva("Digite um número: ")
        leia(numero)
        
        // Tabuada crescente
        escreva("\n Crescente de ", numero, ":\n")
        para (inteiro i = 1; i <= 10; i++) {
            escreva(numero, " x ", i, " = ", numero * i, "\n")
        }
        
        // Tabuada decrescente
        escreva("\n Decrescente de ", numero, ":\n")
        para (inteiro j = 10; j >= 1; j--) {
            escreva(numero, " x ", j, " = ", numero * j, "\n")
        }
    }
}
