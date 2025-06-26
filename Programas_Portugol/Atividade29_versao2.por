programa {
    funcao inicio() {
        inteiro numero_mes
        cadeia meses[] = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
                         "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
        
        faca {
            escreva("Digite um número entre 1 e 12: ")
            leia(numero_mes)
            
            se (numero_mes < 1 ou numero_mes > 12) {
                escreva("Valor inválido! ")
            }
        } enquanto (numero_mes < 1 ou numero_mes > 12)
        
        escreva(numero_mes, " corresponde a ", meses[numero_mes-1])
    }
}
