programa {
  funcao inicio() {
    // tabuada de 1 a 10
  inteiro linha, coluna



    para(linha = 1; linha <= 10; linha++) {

      para(coluna = 1; coluna <= 10; coluna++) {
        escreva(linha, "*", coluna, "=", linha * coluna, "\n")
      }
    }
  }
}
