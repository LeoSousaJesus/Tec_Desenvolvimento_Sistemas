programa {
  funcao inicio() {
    caracter tipoSorvete
      escreva("Sabores dos sorvetes de frutas\n")
      escreva("Código a - Sabor: Uva \n")
      escreva("Código b - Sabor: Morango \n")
      escreva("Código c - Sabor: Manga \n")
      escreva("Código d - Sabor: Amora \n")


      escreva("Digite o código do sabor (a até d):") leia(tipoSorvete)

      escolha(tipoSorvete){
        caso "a": escreva ("Sorvete de Uva - 70 calorias")
        pare

        caso "b": escreva ("Sorvete de Morango - 70 calorias")
        pare

        caso "c": escreva ("Sorvete de Manga - 71 calorias")
        pare

        caso "d": escreva ("Sorvete de Amora - 54 calorias")
        pare

        caso contrario: escreva("Código inválido")
      } 
  }
}

