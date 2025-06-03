programa {
  funcao inicio() {
    // Verificando se uma pessoa está apta para carteira de habilitação para motos, utilizando operadores lógicos

    inteiro idade
    real horasTeoricas, horasPraticas

    escreva("Digite a idade: ")
    leia(idade)

    escreva("Digite a quantidade de horas teóricas assistida: ")
    leia(horasTeoricas)

    escreva("Digite a quantidade de horas práticas assistida: ")
    leia(horasPraticas)

    se (idade>=18)
{
se( horasTeoricas >= 45.0 ){
se(horasPraticas >= 20.0){
escreva("Apto(a)")
}
senao{
  escreva("Não apto(a)")
}
}
senao{
escreva("Não apto(a)")
}
}
senao{
escreva("Não apto(a)")
}
  }
}
