programa {
    funcao inteiro somar(inteiro a, inteiro b) {
        retorne a + b
    }

    funcao inteiro subtrair(inteiro a, inteiro b) {
        retorne a - b
    }

    funcao inteiro multiplicar(inteiro a, inteiro b) {
        retorne a * b
    }

    funcao real dividir(inteiro a, inteiro b) {
            retorne a / b
        }
    funcao inicio() {
        inteiro numero1, numero2
        inteiro resultadoSoma, resultadoSub, resultadoMult
        real resultadoDiv

        escreva("Digite o primeiro número: ")
        leia(numero1)

        escreva("Digite o segundo número: ")
        leia(numero2)

        resultadoSoma = somar(numero1, numero2)
        resultadoSub = subtrair(numero1, numero2)
        resultadoMult = multiplicar(numero1, numero2)
        resultadoDiv = dividir(numero1, numero2)

        escreva("\nResultados das operações:\n")
        escreva("Soma: ", resultadoSoma, "\n")
        escreva("Subtração: ", resultadoSub, "\n")
        escreva("Multiplicação: ", resultadoMult, "\n")
        escreva("Divisão: ", resultadoDiv, "\n")
    }
    }

