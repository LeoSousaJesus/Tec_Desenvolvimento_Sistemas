programa {
  funcao inicio() {
    inteiro contador = 1
    real numero, soma = 0

    enquanto (contador <= 5) {
            escreva("Digite o ", contador, "º número: ")
            leia(numero)

      soma += numero
            contador++
      }
      escreva("\nA soma dos números é: ", soma)
  }
}
