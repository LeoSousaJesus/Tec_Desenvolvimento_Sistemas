programa {
    funcao inicio() {

      escreva("*** Programa Tabuada Completa ***\n")
        // Loop externo para os números de 0 a 10
        para (inteiro numero = 0; numero <= 10; numero++) {
            escreva("\nMultiplicação do ", numero, ":\n")
            escreva("-------------------\n")
            
            // Loop interno para os multiplicadores de 1 a 10
            para (inteiro multiplicador = 1; multiplicador <= 10; multiplicador++) {
                escreva(numero, " x ", multiplicador, " = ", numero * multiplicador, "\n")
            }
            escreva("\n")
        }
    }
}
