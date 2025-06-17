programa {
  funcao inicio() {
    real notasAlunos[3][7], totalNotaAluno
    inteiro linha, coluna

    // Leitura das notas e cálculo da média
    para (linha = 0; linha < 3; linha++) {
      escreva("\n")
      totalNotaAluno = 0.0
      para (coluna = 0; coluna < 6; coluna++) {
        escreva("Digite a ", coluna + 1, "ª nota do aluno ", linha + 1, ": ")
        leia(notasAlunos[linha][coluna])
        totalNotaAluno = totalNotaAluno + notasAlunos[linha][coluna]
      }
      notasAlunos[linha][6] = totalNotaAluno / 6
    }

    // Exibição das notas e médias
    para (linha = 0; linha < 3; linha++) {
      escreva("\n")
      para (coluna = 0; coluna < 7; coluna++) {
        escreva(notasAlunos[linha][coluna], " - ")
      }
    }
  }
}    