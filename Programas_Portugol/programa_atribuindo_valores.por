programa {
  funcao inicio() {
    // Declaração de variáveis
    real transferencia
    inteiro x, y, r

    x = 5 // valor fixado diretamente
    y = x // através do valor de outra variável
    r = x + y // através de uma operação matemática

    escreva("Insira o valor da transferência: R$ ")
    leia(transferencia) // através da entrada de dados
    escreva("Transferência de R$", transferencia, "realizada com sucesso!")
    escreva("\nx = ", x)
    escreva("\ny = ", y) // *,* virgula concatena
    escreva("\nr = " + r) // *+* o mais concatena
  }
}
