programa {
    funcao inicio() {
        inteiro dia
        
        faca {
            escreva("Digite um número de 1 a 7 para o dia da semana: ")
            leia(dia)
            
            se (dia < 1 ou dia > 7) {
                escreva("Valor inválido! ")
            }
        } enquanto (dia < 1 ou dia > 7)
        
        cadeia dias_semana[] = {"Domingo", "Segunda-feira", "Terça-feira", 
                               "Quarta-feira", "Quinta-feira", "Sexta-feira", 
                               "Sábado"}
        
        escreva("O número digitado foi: ", dia, ", tenha uma boa semana, hoje é ", dias_semana[dia-1])
    }
}