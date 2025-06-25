programa {
    funcao inicio() {
        // Declaração de Variáveis
        cadeia nome, continuar = "sim"
        cadeia piloto_mais_rapido = "", piloto_mais_lento = ""
        real velocidade_da_volta = 0.0, volta_mais_rapida = 0.0
        real volta_mais_lenta = 1000.0, media_das_voltas = 0.0, soma_velocidades = 0.0
        inteiro qtdVoltas = 0

        // Lê o nome e a velocidade da volta de n pilotos
        enquanto(continuar == "sim") {
            escreva("\nInforme o nome do piloto: ")
            leia(nome)
            escreva("Informe a velocidade da volta (km/h): ")
            leia(velocidade_da_volta)

            // Contabiliza as voltas
            qtdVoltas++
            
            // Soma das velocidades para cálculo da média
            soma_velocidades += velocidade_da_volta

            // Verifica e atribui a volta mais rápida
            se (velocidade_da_volta > volta_mais_rapida) {
                volta_mais_rapida = velocidade_da_volta
                piloto_mais_rapido = nome
            }

            // Verifica e atribui a volta mais lenta
            se (velocidade_da_volta < volta_mais_lenta) {
                volta_mais_lenta = velocidade_da_volta
                piloto_mais_lento = nome
            }

            // Pergunta se deseja continuar
            escreva("\nDeseja cadastrar outra volta? (sim/não): \n\n")
            leia(continuar)
        }

        // Calcula a média das velocidades
        se (qtdVoltas > 0) {
            media_das_voltas = soma_velocidades / qtdVoltas
        }

        escreva("Piloto com volta mais rápida: ", piloto_mais_rapido, " | Velocidade: ", volta_mais_rapida, " km/h\n")
        escreva("Piloto com volta mais lenta: ", piloto_mais_lento, " | Velocidade: ", volta_mais_lenta, " km/h\n")
        escreva("Média de velocidade das voltas: ", media_das_voltas, " km/h\n")
        escreva("Total de voltas registradas: ", qtdVoltas, "\n")
    }
}