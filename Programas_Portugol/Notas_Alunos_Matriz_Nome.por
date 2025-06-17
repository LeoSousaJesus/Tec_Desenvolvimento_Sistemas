programa {
  funcao inicio() {
    real notaAluno[15][7], totalNotaAluno
    inteiro linha, coluna
    cadeia nomeAluno[15]

    // Leitura dos nomes e notas dos alunos
    para (linha = 0; linha < 2; linha++) {
      escreva("\n")
      totalNotaAluno = 0.0
      escreva("Digite o nome do ", linha + 1, "° aluno: ")
      leia(nomeAluno[linha])
      para (coluna = 0; coluna < 6; coluna++) {
        escreva("Digite a ", coluna + 1, "ª nota do aluno ", nomeAluno[linha], ": ")
        leia(notaAluno[linha][coluna])
        totalNotaAluno = totalNotaAluno + notaAluno[linha][coluna]
      }
      notaAluno[linha][6] = totalNotaAluno / 6
    }

    // Exibição dos resultados
    para (linha = 0; linha < 2; linha++) {
      escreva("\n\n")
      escreva("Aluno: ", nomeAluno[linha], " - Notas: ")
      para (coluna = 0; coluna < 7; coluna++) {
        se (coluna == 6) {
          escreva(" Média final: ", notaAluno[linha][6])
          se (notaAluno[linha][6] >= 6) {
            escreva(" - Aprovado(a)")
          }
          senao {
            escreva(" - Reprovado(a) - Reavaliação")
          }
        }
        senao {
          escreva(notaAluno[linha][coluna], " - ")
        }
      }
    }
  }
}
}
