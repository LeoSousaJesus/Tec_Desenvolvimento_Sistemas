programa
{
  funcao inicio()
  {
    // Declaração de variáveis
    cadeia livros[100][2] // Matriz para armazenar livros: [título][autor] (simplificado para título apenas por enquanto)
    inteiro totalLivros = 0
    inteiro opcao
    cadeia tituloBusca
    inteiro indiceEncontrado

    faca
    {
      escreva("\n--- Menu do Acervo Digital de Livros ---\n")
      escreva("1. Inserir novo livro\n")
      escreva("2. Remover livro\n")
      escreva("3. Buscar livro por título\n")
      escreva("4. Listar todos os livros\n")
      escreva("0. Sair do programa\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha(opcao)
      {
        caso 1:
          // Inserir livro
          se (totalLivros < 100)
          {
            escreva("Digite o título do livro a ser inserido: ")
            leia(livros[totalLivros][0])
            escreva("Livro '" + livros[totalLivros][0] + "' inserido com sucesso!\n")
            totalLivros++
          }
          senao
          {
            escreva("Acervo cheio! Não é possível adicionar mais livros.\n")
          }
        pare

        caso 2:
          // Remover livro
          se (totalLivros > 0)
          {
            escreva("Digite o título do livro a ser removido: ")
            leia(tituloBusca)
            indiceEncontrado = -1
            para (inteiro i = 0; i < totalLivros; i++)
            {
              se (livros[i][0] == tituloBusca)
              {
                indiceEncontrado = i
                pare
              }
            }

            se (indiceEncontrado != -1)
            {
              para (inteiro i = indiceEncontrado; i < totalLivros - 1; i++)
              {
                livros[i][0] = livros[i+1][0]
              }
              totalLivros--
              escreva("Livro '" + tituloBusca + "' removido com sucesso!\n")
            }
            senao
            {
              escreva("Livro '" + tituloBusca + "' não encontrado no acervo.\n")
            }
          }
          senao
          {
            escreva("O acervo está vazio. Não há livros para remover.\n")
          }
        pare

        caso 3:
          // Buscar livro
          se (totalLivros > 0)
          {
            escreva("Digite o título do livro a ser buscado: ")
            leia(tituloBusca)
            indiceEncontrado = -1
            para (inteiro i = 0; i < totalLivros; i++)
            {
              se (livros[i][0] == tituloBusca)
              {
                indiceEncontrado = i
                pare
              }
            }

            se (indiceEncontrado != -1)
            {
              escreva("Livro encontrado: '" + livros[indiceEncontrado][0] + "'\n")
            }
            senao
            {
              escreva("Livro '" + tituloBusca + "' não encontrado no acervo.\n")
            }
          }
          senao
          {
            escreva("O acervo está vazio. Não há livros para buscar.\n")
          }
        pare

        caso 4:
          // Listar livros
          se (totalLivros > 0)
          {
            escreva("\n--- Livros Cadastrados ---\n")
            para (inteiro i = 0; i < totalLivros; i++)
            {
              escreva(i + 1)
              escreva(". ")
              escreva(livros[i][0])
              escreva("\n")
            }
            escreva("---------------------------\n")
          }
          senao
          {
            escreva("O acervo está vazio. Nenhum livro cadastrado.\n")
          }
        pare

        caso 0:
          escreva("Saindo do programa. Até mais!\n")
        pare

        caso contrario:
          escreva("Opção inválida. Por favor, escolha uma opção válida.\n")
        pare
      }
    } enquanto (opcao != 0)
  }
}


