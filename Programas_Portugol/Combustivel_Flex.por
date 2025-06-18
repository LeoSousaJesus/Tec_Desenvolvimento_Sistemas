programa {
    funcao inicio() {

        real Gasolina, Etanol, diferenca
        
        escreva("Informe o valor da gasolina (R$): ")
        leia(Gasolina)
        
        escreva("Informe o valor do etanol (R$): ")
        leia(Etanol)
        
        diferenca = Etanol / Gasolina
        
        se (diferenca < 0.75) {
            escreva("\n Abasteça com ETANOL (", Etanol, "/", Gasolina, " = ", diferenca, " < 0.75)\n")
        }
        senao {
            escreva("\n Abasteça com GASOLINA (", Etanol, "/", Gasolina, " = ", diferenca, " ≥ 0.75)\n")
        }
    }
}
