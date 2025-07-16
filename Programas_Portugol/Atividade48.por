/*
  Crie um programa para fidelização de clientes de um restaurante. A cada pagamento no restaurante, o valor é armazenado na cartela de fidelização.
Assim que o cliente completar as 10 posições da cartela, o sistema deve apresentar a seguinte mensagem: "Hoje o seu almoço é uma cortesia da casa, Parabéns!".

*/

programa
{
    funcao inicio()
    {
        real cartela[10]
        inteiro posicao = 0
        real valor
        cadeia resposta
        
        escreva("Bem-vindo!\n")
        
        enquanto (posicao < 10) {
            escreva("\nDigite o valor da refeição de hoje R$ ")
            leia(valor)
          
            limpa()

            // Armazenando o valor na cartela
            cartela[posicao] = valor
            posicao += 1
            
            // Verificando a cortesia
            se (posicao == 10) {
                escreva("Hoje o almoço é por conta da casa!\n")
            } senao {
                escreva("Refeição registrada! Faltam ", 10 - posicao, " para ganhar um almoço grátis.\n")
                escreva("Deseja registrar outra refeição? (sim/não): ")
                leia(resposta)
                
                se (resposta == "não") {
                    escreva("\nVolte sempre!\n")
                }
            }
        }
    }
}