programa {
  funcao inicio() {
    inteiro idade
    caracter alfabetizado

    escreva("Informe a sua idade: ")
    leia(idade)

    escreva("Você é alfabetizado? [S] para sim, [N] para não: ")
    leia(alfabetizado)

    se (idade < 16) {
      escreva("Não pode votar.\n")
    }
    senao se (alfabetizado == 'S' e idade >= 18 e idade <= 70) {
      escreva("Voto obrigatório.\n")
    }
    senao se (alfabetizado == 'N' e idade >= 18 e idade <= 70) {
      escreva("Não pode votar.\n")
    }
    senao {
      escreva("Voto facultativo.\n")
    }
  }
}
