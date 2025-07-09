programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro linha, coluna, matriz[3][3]

    matriz[0][0] = 1
    matriz[0][1] = 2
    matriz[0][2] = 3
    matriz[1][0] = 4
    matriz[1][1] = 5
    matriz[1][2] = 6
    matriz[2][0] = 7
    matriz[2][1] = 8
    matriz[2][2] = 9

    para(linha = 0; linha < 3; linha++) {
      para(coluna =  0; coluna < 3; coluna++) {
        matriz[linha][coluna] = u.sorteia(1,100)
      }
    }

    escreva("Digite nove números para preencher a matriz 3x3: ")
    para(linha = 0; linha < 3; linha++) {
      para(coluna = 0; coluna < 3; coluna++) {
        leia(matriz[linha][coluna])
      }
    }

    para(linha = 0; linha < 3; linha++) {
      para(coluna = 0; coluna < 3; coluna++) {
        escreva(matriz[linha][coluna], " ")
      }
      escreva("\n")
    }
  }
}
