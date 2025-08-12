programa {

     real pi = 3.14159

    funcao real calcularArea(real raio) {
        real area
        area = pi * raio * raio
        retorne area
    }

    funcao inicio() {
        real raio, area

        escreva("Digite o valor do raio do círculo: ")
        leia(raio)

        area = calcularArea(raio)

        escreva("A área do círculo é: ", area)
    }
}