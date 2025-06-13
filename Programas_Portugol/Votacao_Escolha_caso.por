programa {
  funcao inicio() {
    inteiro idade, voto
    caracter alfabetizado

    // Entrada de dados
    escreva("Informe a sua idade: ")
    leia(idade)
    escreva("Você é alfabetizado? [S] para sim, [N] para não: ")
    leia(alfabetizado)

    // Verificação
    se (idade < 16) {
      voto = 1
    }
    senao se ( idade >= 18 e idade <= 70 e alfabetizado == 'S') {
      voto = 2
    }
    senao {
      voto = 3
    }


    // Condicional escolha caso
    escolha(voto) {
      caso 1: 
        escreva("Ainda não possui idade suficiente para votar. ")
      pare

      caso 2:
        escreva("Voto obrigatório")
      pare

      caso 3:
        escreva("Voto facultativo")
      pare

      caso contrario:
        escreva("Erro")

    }
  }
}
