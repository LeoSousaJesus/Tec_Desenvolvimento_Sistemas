programa {
    funcao numeros(inteiro & vetor[]) {
        para (inteiro i = 0; i < 4; i++) {
            para (inteiro j = 0; j < 4 - i; j++) {
                se (vetor[j] > vetor[j+1]) {
                    inteiro aux = vetor[j]
                    vetor[j] = vetor[j+1]
                    vetor[j+1] = aux
                }
            }
        }
    }

    funcao inicio() {
        inteiro numeros[5]
        
        escreva(" ORDENAR NÚMEROS \n")
        para (inteiro i = 0; i < 5; i++) {
            escreva("Digite o ", i+1, "º número: ")
            leia(numeros[i])
        }
        
        numeros(numeros)
        
        escreva("\nNúmeros em ordem crescente: ")
        para (inteiro i = 0; i < 5; i++) {
            escreva(numeros[i])
            se (i < 4) {
                escreva(", ") 
            }
        }
    }
}
