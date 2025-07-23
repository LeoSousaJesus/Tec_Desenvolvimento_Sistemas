/*
  Crie um programa para fidelização de clientes de um restaurante. A cada pagamento no restaurante, o valor é armazenado na cartela de fidelização.
Assim que o cliente completar as 10 posições da cartela, o sistema deve apresentar a seguinte mensagem: "Hoje o seu almoço é uma cortesia da casa, Parabéns!".

*/

programa {
    funcao inicio() {
        real valores[10]
        inteiro posicao = 0
        real pagamento
        cadeia opcao
        
        escreva("\nA cada 10 refeições pagas, você ganha uma cortesia!\n\n")
        
        enquanto (verdadeiro) {
            escreva("\nMenu:\n")
            escreva("1 - Registrar pagamento\n")
            escreva("2 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)
            
            se (opcao == "1") {
                escreva("\nDigite o valor da refeição: R$ ")
                leia(pagamento)
                
                valores[posicao] = pagamento
                posicao++
                
                escreva("\nPagamento registrado! Posição atual: ", posicao, "/10\n")
                
                se (posicao == 10) {
                    escreva("Hoje o seu almoço é cortesia da casa, Parabéns!\n")
                    
                    posicao = 0
                    para (inteiro i = 0; i < 10; i++) {
                        valores[i] = 0.0
                    }
                }
            } senao se (opcao == "2") {
                escreva("\nSistema encerrado. Agradecemos a preferência. Volte Sempre!\n")
                pare
            } senao {
                escreva("\nOpção inválida! Digite 1 ou 2.\n")
            }
        }
    }
}