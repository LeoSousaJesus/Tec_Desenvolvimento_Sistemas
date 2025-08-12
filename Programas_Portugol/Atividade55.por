/*
Crie um programa para armazenar as poltronas vendidas de um ônibus interestadual com 42 poltronas.
O sistema deve solicitar ao usuário a poltrona desejada e em seguida desabilitar a exibição da poltrona para venda.
*/


programa
{
    funcao inicio()
    {
        cadeia poltronas[42]
        inteiro local
        
        // Para que inicializa todas as poltronas como "disponível"
        para(inteiro i = 0; i < 42; i++) {
            poltronas[i] = "DISPONÍVEL"
        }
        
        faca {
            escreva("\n*** Sistema de Venda Passagens Ônibus Interestadual***\n")
            escreva("1. Mostrar poltronas\n")
            escreva("2. Vender poltrona\n")
            escreva("3. Sair\n")
            escreva("Escolha: ")
            leia(local)
            
            se(local == 1) {
                escreva("\nPoltronas disponíveis (X = vendida):\n")
                para(inteiro i = 0; i < 42; i++) {
                    // Mostra número da poltrona (i+1) e status
                    escreva("[", i+1, "]: ", poltronas[i], "\t")
                    
                    // Quebra de linha a cada 4 poltronas para melhor visualização
                    se((i+1) % 4 == 0) escreva("\n")
                }
            }
            senao se(local == 2) {
                inteiro numeroPoltrona
                escreva("\nDigite o número da poltrona (1 a 42): ")
                leia(numeroPoltrona)
                
                se(numeroPoltrona >= 1 e numeroPoltrona <= 42) {
                    se(poltronas[numeroPoltrona-1] == "DISPONÍVEL") {
                        poltronas[numeroPoltrona-1] = "VENDIDA"
                        escreva("Poltrona ", numeroPoltrona, " vendida com sucesso!\n")
                    } senao {
                        escreva("Poltrona ", numeroPoltrona, " já está vendida!\n")
                    }
                } senao {
                    escreva("Número de poltrona inválido!\n")
                }
            }
        } enquanto(local != 3)
        
        escreva("Sistema encerrado.")
    }
}