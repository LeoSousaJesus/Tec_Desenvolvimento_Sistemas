programa
{
    funcao inicio()
    {
        real velocidade1, velocidade2, tempo, velocidade_media
        real distancia = 2

        escreva("Velocidade registrada no primeiro pardal (km/h): ")
        leia(velocidade1)

        escreva("Velocidade registrada no segundo pardal (km/h): ")
        leia(velocidade2)

        escreva("Tempo entre os pardais (em minutos): ")
        leia(tempo)

        tempo = tempo / 60

        velocidade_media = distancia / tempo

        escreva("\nVelocidade média do veículo: ", velocidade_media, " km/h\n")

        se (velocidade_media > 80)
        {
            escreva("Multado: Velocidade acima do limite de 80 km/h!\n")
        }
        senao
        {
            escreva("Dentro do limite de velocidade. Sem multa.\n")
        }
    }
}