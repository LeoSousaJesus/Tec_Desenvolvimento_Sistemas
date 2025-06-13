programa {
    funcao inicio() {
        // Declaração de variáveis
        inteiro numero1, numero2, numero3, aux
        logico ordenado
        
        // Entrada de dados
        escreva("Informe três números inteiros: \n")
        leia(numero1)
        leia(numero2)
        leia(numero3)
        
        // Ordenação usando faca...enquanto
        faca {
            ordenado = verdadeiro // Assume que está ordenado
            
            se(numero1 > numero2) {
                aux = numero1
                numero1 = numero2
                numero2 = aux
                ordenado = falso
            }
            
            se(numero2 > numero3) {
                aux = numero2
                numero2 = numero3
                numero3 = aux
                ordenado = falso
            }
            
            se(numero1 > numero2) {
                aux = numero1
                numero1 = numero2
                numero2 = aux
                ordenado = falso
            }
        } enquanto(nao ordenado)
        
        // Saída dos números ordenados
        escreva("Números ordenados: ", numero1, "-", numero2, "-", numero3)
    }
}

