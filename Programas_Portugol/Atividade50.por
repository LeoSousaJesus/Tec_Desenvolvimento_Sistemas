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
        inteiro goleador = 0
        inteiro i
        
        escreva("Digite os dados dos 11 jogadores:\n")
        
        // Leitura dos jogadores
        para (i = 0; i < 11; i++) {
            escreva("\nJogador ", i + 1, ":\n")
            escreva("Nome: ")
            leia(nomes[i])
            escreva("Quantidade de gols: ")
            leia(gols[i])
            
            // Verificando o artilheiro
            se (gols[i] > gols[goleador]) {
                goleador = i
            }
        }
        
        // Exibe o artilheiro
        escreva("\nO goleador do time é:\n")
        escreva("Nome: ", nomes[goleador], "\n")
        escreva("Gols: ", gols[goleador], "\n")
    }
}