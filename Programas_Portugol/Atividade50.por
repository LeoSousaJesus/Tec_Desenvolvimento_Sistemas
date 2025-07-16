/*
  Crie um programa para armazenar o nome do jogador e a quantidade de gols de 11 jogadores de um time.
  Ao finalizar a leitura dos jogadores, o algoritmo deve apresentar na tela o nome e a quantidade de gols do artilheiro do time.
*/


programa
{
    funcao inicio()
    {
        cadeia nomes[11]
        inteiro gols[11]
        inteiro indiceArtilheiro = 0
        inteiro i
        
        escreva("Digite os dados dos 11 jogadores:\n")
        
        // Leitura dos dados dos jogadores
        para (i = 0; i < 11; i++) {
            escreva("\nJogador ", i + 1, ":\n")
            escreva("Nome: ")
            leia(nomes[i])
            escreva("Quantidade de gols: ")
            leia(gols[i])
            
            // Verifica se é o artilheiro
            se (gols[i] > gols[indiceArtilheiro]) {
                indiceArtilheiro = i
            }
        }
        
        // Exibe o artilheiro
        escreva("\nO artilheiro do time é:\n")
        escreva("Nome: ", nomes[indiceArtilheiro], "\n")
        escreva("Gols: ", gols[indiceArtilheiro], "\n")
    }
}