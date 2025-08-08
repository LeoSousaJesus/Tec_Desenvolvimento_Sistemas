programa {
    inclua biblioteca Util --> u

    funcao inicio() {
        inteiro matriz[3][3]
        inteiro soma = 0

        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 3; j++) {
                matriz[i][j] = u.sorteia(1, 50)  // Sorteia números entre 1 e 50
            }
        }

        // Exibir a matriz
        escreva("Matriz 3x3:\n")
        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 3; j++) {
                escreva(matriz[i][j], " ")
            }
            escreva("\n")
        }
        
        // Calculando a soma da diagonal
        para(inteiro i = 0; i < 3; i++) {
            soma += matriz[i][i]
        }

        // Exibir o resultado
        escreva("\nSoma da diagonal: ", soma)
    }
}