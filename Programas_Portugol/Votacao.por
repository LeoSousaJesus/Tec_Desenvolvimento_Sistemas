programa {
  funcao inicio() {
    inteiro idade
    caracter alfabetizado
    caracter facultativo

    escreva("Informe a sua idade: ")
    leia(idade)

    
    escreva("[S] para alfabetizado \n")
    escreva("[N] para não alfabetizado \n")

    escreva("Digite (S ou N): ")
    leia(alfabetizado)

    escreva("Tem idade entre 18 e 70 anos? \n", idade, " anos de idade")
    se (idade>= 18)  
    {
      escreva("\n Vote na tela seguinte")
    }
    senao se (idade < 16 ou idade > 70)
  {
  escreva ("Voto Facultativo, escolha [S] para votar ou [N] para não votar \n")
  leia(facultativo)
  }
  }
}
