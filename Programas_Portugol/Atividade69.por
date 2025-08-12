programa {
  funcao inicio() {
      inteiro opcao

      escreva("Escolha qual reajuste você deseja fazer: \n")
      escreva("1- GASOLINA.\n")
      escreva("2- ETANOL.\n")
      escreva("3- AMBOS\n")
      escreva("Escolha uma das opcçoes acima: ")
      leia(opcao)

      escolha(opcao){

        caso 1: 
            Gasolina()
        pare

        caso 2: 
            Etanol()
        pare

        caso 3:
            Ambos()
        pare
      }

  }

  funcao Gasolina(){
    real novoPreco, reajuste
    real preco, percentual

    escreva("\nAlterando o preço da Gasolina.\n")

    escreva("Escreva o preço atual da Gasolina: ")
    leia(preco)

    escreva("Escreva o reajuste: ")
    leia(percentual)

    reajuste = preco * (percentual/100)

    novoPreco = preco + reajuste

    escreva("O reajuste foi de: ", reajuste,"\n")
    escreva("O novo preço da gasolina é: ", novoPreco,"\n")
    
  }


  funcao Etanol(){
    real novoPreco, reajuste
    real preco, percentual

    escreva("\nAlterando o preço do Etanol.\n")

    escreva("Escreva o preço atual do Etanol: ")
    leia(preco)

    escreva("Escreva o reajuste: ")
    leia(percentual)

    reajuste = preco * (percentual/100)

    novoPreco = preco + reajuste

    escreva("O reajuste foi de: ", reajuste,"\n")
    escreva("O novo preço do Etanol é: ", novoPreco,"\n")
    
  }

  funcao Ambos(){
    real novoPreco[2], reajuste[2]
    real preco[2], percentual[2]

    escreva("\nAlterando o preço do Etanol\n")

    escreva("Escreva o preço atual do Etanol: ")
    leia(preco[0])

    escreva("Escreva o reajuste: ")
    leia(percentual[0])

    reajuste[0] = preco[0] * (percentual[0]/100)

    novoPreco[0] = preco[0] + reajuste[0]

    escreva("\nAlterando o preço da Gasolina\n")

     escreva("\nAlterando o preço da Gasolina.\n")

    escreva("Escreva o preço atual da Gasolina: ")
    leia(preco[1])

    escreva("Escreva o reajuste: ")
    leia(percentual[1])

    reajuste[1] = preco[1] * (percentual[1]/100)

    novoPreco[1] = preco[1] + reajuste[1]

    escreva("\nExibindo os novos reajustes do Etanol.\n")
    
    escreva("O reajuste do Etanol foi de: ", reajuste[0],"\n")
    escreva("O novo preço do Etanol é: ", novoPreco[0],"\n")

    escreva("\nExibindo os novos reajustes da Gasolina.\n")

    escreva("O reajuste da Gasolina foi de: ", reajuste[1],"\n")
    escreva("O novo preço da Gasolina é: ", novoPreco[1],"\n")

    
  }
}
