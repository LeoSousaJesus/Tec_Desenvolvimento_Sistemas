programa{

inclua biblioteca Util --> u
inclua biblioteca Calendario

    funcao inicio(){
        cadeia nome, cpf
        inteiro agencia, conta, opcao
        real saldo = 0, valor
        logico sair = falso
        inteiro horaAtual = Calendario.hora_atual(falso)
        inteiro minutoAtual = Calendario.minuto_atual()
        inteiro dia = Calendario.dia_mes_atual()
        inteiro mes = Calendario.mes_atual()
        inteiro ano = Calendario.ano_atual()

        escreva("=== Cadastro de Conta Bancária ===\n")
        escreva("Informe seu nome: ")
        leia(nome)
        escreva("Informe seu CPF: ")
        leia(cpf)

        agencia = u.sorteia(1000, 9999)
        conta = u.sorteia(10000, 99999)

        enquanto (sair == falso){
            escreva("\n=============================\n")
            escreva("Data: ",  dia, "/", mes, "/", ano," | Hora: ", horaAtual, "h", minutoAtual, "min\n")
            escreva("=============================\n")
            escreva("1 - Mostrar dados da conta\n")
            escreva("2 - Consultar saldo\n")
            escreva("3 - Depositar\n")
            escreva("4 - Sacar\n")
            escreva("5 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            limpa()
            escolha (opcao){
                caso 1:
                    escreva("\n=== Dados da Conta ===\n")
                    escreva("Nome: ", nome, "\n")
                    escreva("CPF: ", cpf, "\n")
                    escreva("Agência: ", agencia, "\n")
                    escreva("Conta: ", conta, "\n")
                pare

                caso 2:
                    escreva("\nSaldo atual: R$ ", saldo, "\n")
                pare

                caso 3:
                    escreva("\nInforme o valor para depósito: R$ ")
                    leia(valor)
                    se (valor > 0){
                        saldo = saldo + valor
                        escreva("Depósito realizado com sucesso!\n")
                    }
                    senao{
                        escreva("Valor inválido.\n")
                    }
                pare

                caso 4:
                    escreva("\nInforme o valor para saque: R$ ")
                    leia(valor)
                    se (valor > 0){
                        real taxa = saldo * 0.005
                        se (valor + taxa <= saldo){
                            saldo = saldo - valor - taxa
                            escreva("Saque realizado com sucesso!\n")
                            escreva("Taxa de R$ ", taxa, " aplicada (0,5%).\n")
                        }
                        senao{
                            escreva("Saldo insuficiente para realizar o saque com a taxa.\n")
                        }
                    }
                    senao{
                        escreva("Valor inválido.\n")
                    }
                pare

                caso 5:
                    escreva("Encerrando programa...\n")
                    sair = verdadeiro
                pare

                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        }

        escreva("\nObrigado por usar nosso banco, ", nome, "!\n")
    }
}
