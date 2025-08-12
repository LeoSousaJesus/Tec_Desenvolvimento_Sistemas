programa{
    funcao inicio(){
        
        inteiro candidato1 = 0, candidato2 = 0, candidato3 = 0, maxVotos = 10, branco = 0, nulo = 0, totalVotos = 0, opcao
        logico sair = falso
           //real perc1 = 0, perc2 = 0, perc3 = 0, percBranco = 0, percNulo = 0

        enquanto (totalVotos < maxVotos){
            escreva("\n------ Eleição Presidencial ------\n")
            escreva("Eleitor ", totalVotos + 1, " de ", maxVotos, "\n")
            escreva("1 - Severino\n")
            escreva("2 - Eustácio\n")
            escreva("3 - Eduardo\n")
            escreva("4 - Voto em branco\n")
            escreva("5 - Voto nulo\n")
            escreva("Escolha sua opção: ")
            leia(opcao)

            se (opcao == 1){
                candidato1 = candidato1 + 1
                totalVotos = totalVotos + 1
            }
            senao se (opcao == 2){
                candidato2 = candidato2 + 1
                totalVotos = totalVotos + 1
            }
            senao se (opcao == 3){
                candidato3 = candidato3 + 1
                totalVotos = totalVotos + 1
            }
            senao se (opcao == 4){
                branco = branco + 1
                totalVotos = totalVotos + 1
            }
            senao se (opcao == 5){
                nulo = nulo + 1
                totalVotos = totalVotos + 1
            }
            senao se (opcao == 0){
                sair = verdadeiro
            }
            senao{
                escreva("Opção inválida. Tente novamente.\n")
            }
        }

        real perc1 = 0, perc2 = 0, perc3 = 0, percBranco = 0, percNulo = 0

        se (totalVotos > 0)
        {
            perc1 = (candidato1 * 100.0) / totalVotos
            perc2 = (candidato2 * 100.0) / totalVotos
            perc3 = (candidato3 * 100.0) / totalVotos
            percBranco = (branco * 100.0) / totalVotos
            percNulo = (nulo * 100.0) / totalVotos
        }

        escreva("\n====== RESULTADO FINAL DA VOTAÇÃO ======\n")
        escreva("Total de votos: ", totalVotos, "\n")
        escreva("Candidato 1 (Severino): ", candidato1, " votos (", perc1, "%)\n")
        escreva("Candidato 2 (Eustácio): ", candidato2, " votos (", perc2, "%)\n")
        escreva("Candidato 3 (Eduardo): ", candidato3, " votos (", perc3, "%)\n")
        escreva("Votos em branco: ", branco, " (", percBranco, "%)\n")
        escreva("Votos nulos: ", nulo, " (", percNulo, "%)\n")
    }
}