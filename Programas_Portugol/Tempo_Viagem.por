programa {
    funcao inicio() {
        cadeia localPartida, localChegada
        real distancia, velocidade, tempo
        
        escreva("Informe o local de partida: ")
        leia(localPartida)
        
        escreva("Informe o local de destino: ")
        leia(localChegada)
        
        escreva("Informe a distância entre " + localPartida + " e " + localChegada + " (em km): ")
        leia(distancia)
        
        escreva("Informe a velocidade média do veículo (em km/h): ")
        leia(velocidade)
        
        // Calculando o tempo da viagem
        tempo = distancia / velocidade
  
        escreva("Viagem de " + localPartida + " para " + localChegada + "\n")
        escreva("Distância: " + distancia + " km\n")
        escreva("Velocidade média: " + velocidade + " km/h\n")
        escreva("Tempo estimado de viagem: " + tempo + " horas\n")
        
        inteiro horas = tempo
        real minutosDecimal = (tempo - horas) * 60
        inteiro minutos = minutosDecimal
        
        escreva("\n O tempo de viagem estimado é de aproximadamente: " + horas + " horas e " + minutos + " minutos\n")
    }
}
