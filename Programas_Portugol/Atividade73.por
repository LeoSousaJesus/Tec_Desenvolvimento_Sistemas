programa
{
    funcao inicio()
    {
        cadeia nome
        inteiro idade, opcao
        logico ingresso_vendido = falso

        cadeia filmes[6] = {
            "1 - Filme 1 (Sala 1) - Classificação: 10 anos",
            "2 - Filme 2 (Sala 2) - Classificação: 18 anos",
            "3 - Filme 3 (Sala 3) - Classificação: 12 anos",
            "4 - Filme 4 (Sala 4) - Classificação: Livre",
            "5 - Filme 5 (Sala 5) - Classificação: 16 anos",
            "6 - Filme 6 (Sala 6) - Classificação: 14 anos"
        }

        inteiro classificacoes[6] = {10, 18, 12, 0, 16, 14}

        escreva("---- COMPRA DE INGRESSOS ----\n\n")
        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        enquanto (ingresso_vendido == falso)
        {
            escreva("\n--- FILMES EM EXIBIÇÃO ---\n")
            
            para (inteiro i = 0; i < 6; i++)
            {
                escreva(filmes[i], "\n")
            }

            escreva("\nEscolha o número do filme que deseja assistir (1 a 6): ")
            leia(opcao)

            se (opcao >= 1 e opcao <= 6)
            {
                inteiro idade_minima = classificacoes[opcao - 1]

                se (idade >= idade_minima)
                {
                    escreva("\nIngresso vendido com sucesso!\n")
                    escreva("Bem-vindo ao cinema, ", nome, "!\n")
                    escreva("Aproveite o filme: ", filmes[opcao - 1], "\n")
                    ingresso_vendido = verdadeiro
                }
                senao
                {
                    escreva("\nDesculpe, ", nome, ", você não tem idade suficiente para assistir este filme.\n")
                    escreva("Escolha outro filme.\n")
                }
            }
            senao
            {
                escreva("\nOpção inválida. Por favor, selecione um número entre 1 e 6.\n")
            }
        }

        escreva("\nPrograma encerrado.")
    }
}
