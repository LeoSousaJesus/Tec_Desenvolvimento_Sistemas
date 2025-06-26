programa {
    funcao inicio() {
        // Declaração de variável
        inteiro numero_mes
        
        // Solicitação do número
        escreva("Digite um número entre 1 e 12: ")
        leia(numero_mes)
        
        // Verificação
        se (numero_mes < 1 ou numero_mes > 12) {
            escreva("Número inválido! Digite um valor entre 1 e 12.")
            retorne
        }
        
        // Determinando o mês
        escolha (numero_mes) {
            caso 1:
                escreva("1 corresponde a Janeiro")
                pare
            caso 2:
                escreva("2 corresponde a Fevereiro")
                pare
            caso 3:
                escreva("3 corresponde a Março")
                pare
            caso 4:
                escreva("4 corresponde a Abril")
                pare
            caso 5:
                escreva("5 corresponde a Maio")
                pare
            caso 6:
                escreva("6 corresponde a Junho")
                pare
            caso 7:
                escreva("7 corresponde a Julho")
                pare
            caso 8:
                escreva("8 corresponde a Agosto")
                pare
            caso 9:
                escreva("9 corresponde a Setembro")
                pare
            caso 10:
                escreva("10 corresponde a Outubro")
                pare
            caso 11:
                escreva("11 corresponde a Novembro")
                pare
            caso 12:
                escreva("12 corresponde a Dezembro")
        }
    }
}