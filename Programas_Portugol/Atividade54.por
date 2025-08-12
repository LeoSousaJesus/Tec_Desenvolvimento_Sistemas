/*
  Você foi contratado para desenvolver um sistema para um estacionamento. 
  O processo de parar o carro ocorre quando o cliente deixa o carro na porta do estacionamento para o manobrista realizar a parada. 
  Ao estacionar o carro, o manobrista reserva a vaga no sistema informando a placa do veículo. 
  Ao chegar para buscar o carro, o cliente informa a placa do veículo ao manobrista que realiza a consulta no sistema. 
  O manobrista descobre em qual vaga (índice da matriz) está o carro e torna a vaga livre para outro cliente. 
  Atualmente o estacionamento conta com 18 vagas, sendo 9 em cada lado. Monte o sistema com um menu 
  para exibir as vagas do estacionamento, cadastrar um veículo em uma vaga e desocupar uma vaga.

*/


programa
{
    // Matriz 2x9
    cadeia vagas[2][9] = {{"VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA"},
                          {"VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA","VAZIA"}}
    
    funcao inicio()
    {
        inteiro opcao
        cadeia placa
        inteiro lado, vaga
        
        faca {
            escreva("\n=== ESTACIONAMENTO ===\n")
            escreva("1. Mostrar vagas\n")
            escreva("2. Estacionar carro\n")
            escreva("3. Retirar carro\n")
            escreva("4. Sair\n")
            escreva("Opção: ")
            leia(opcao)
            
            se(opcao == 1) {
                escreva("\nLado 1:\t\tLado 2:\n")
                para(inteiro j = 0; j < 9; j++) {
                    escreva("Vaga ", j+1, ": ", vagas[0][j], "\tVaga ", j+1, ": ", vagas[1][j], "\n")
                }
            }
            senao se(opcao == 2) {
                escreva("\nDigite a placa: ")
                leia(placa)
                escreva("Lado (1 ou 2): ")
                leia(lado)
                escreva("Vaga (1 a 9): ")
                leia(vaga)
                
                se(lado >= 1 e lado <= 2 e vaga >= 1 e vaga <= 9) {
                    se(vagas[lado-1][vaga-1] == "VAZIA") {
                        vagas[lado-1][vaga-1] = placa
                        escreva("Carro estacionado!\n")
                    } senao {
                        escreva("Vaga ocupada!\n")
                    }
                } senao {
                    escreva("Dados inválidos!\n")
                }
            }
            senao se(opcao == 3) {
                escreva("\nDigite a placa: ")
                leia(placa)
                
                para(inteiro i = 0; i < 2; i++) {
                    para(inteiro j = 0; j < 9; j++) {
                        se(vagas[i][j] == placa) {
                            vagas[i][j] = "VAZIA"
                            escreva("Carro retirado do Lado ", i+1, " Vaga ", j+1, "!\n")
                            pare
                        }
                    }
                }
                escreva("Carro não encontrado!\n")
            }
        } enquanto(opcao != 4)
    }
}