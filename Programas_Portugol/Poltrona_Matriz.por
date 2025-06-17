programa {
  funcao inicio() {
    // A matriz é utilizada para armazenar vários dados de um mesmo tipo, igual ao vetor, porém com mais de uma dimensão.

    /* 
      tipo_matriz nome_matriz[quantidade_linhas][quantidade_colunas]
    */

    // Algoritmo para venda de ingressos de um pequeno teatro com 5 fileiras e 6 poltronas em cada fileira.

  inteiro poltrona[5][6]

  // atribuindo valor inicial 0 para cada poltrona
      para(inteiro linha =0; linha < 5; linha++){
        para (inteiro coluna =0; coluna < 6; coluna++){
          poltrona[linha][coluna]=0
  }
}
  escreva("Mapa do teatro\n")
  escreva("\n________________________________________________________\n")
  escreva(" # PALCO # \n")
  
  para(inteiro linha =0; linha < 5; linha++){
      escreva("\n")
    para (inteiro coluna =0; coluna < 6; coluna++){
        escreva ("P(",linha, coluna, "): ", poltrona[linha][coluna]," | ")
    }
  }
    escreva("\n____________________FINAL DO TEATRO____________________\n")
 }
}