programa {
  // importa as bibliotecas
  inclua biblioteca Util
  inclua biblioteca Calendario

  // função para mostrar os dados da conta
  funcao mostrarDados(cadeia nome, inteiro cpf, inteiro agencia, inteiro conta) {
    escreva("Nome do titular: ", nome, ".\n")
    escreva("CPF do titular: ", cpf, ".\n")
    escreva("Agência: ", agencia, ".\n")
    escreva("Conta: ", conta, ".\n")
  }

  // função de depósito
  funcao real depositarValor(real saldo, real valor) {
    saldo += valor
    retorne saldo
  }

  // função de saque
  funcao real sacarValor(real saldo, real valor) {
    saldo -= valor
    retorne saldo
  }

  // função principal
  funcao inicio() {
    // declaração de variáveis
    cadeia nome
    inteiro agencia, conta, cpf
    real saldo = 0.0, valor
    caracter opcao

    // dados do cliente
    escreva("Informe o nome do titular da conta:\n")
    leia(nome)
    escreva("Informe o CPF do titular da conta:\n")
    leia(cpf)

    // limpa console
    limpa()

    // atribui agência, conta e saldo inicial
    agencia = 12345
    conta = Util.sorteia(100000, 999999)
    saldo = 0.0

    // exibe dados da conta
    mostrarDados(nome, cpf, agencia, conta)

    // laço com FACA...ENQUANTO
    faca {
      escreva("\n\n-----MENU DE OPÇÕES-----\n\n")
      escreva("Data atual: ", Calendario.dia_mes_atual(), "/", Calendario.mes_atual(), "/2023.\n")
      escreva("Hora atual: ", Calendario.hora_atual(falso), ":", Calendario.minuto_atual(), ".\n")
      escreva("1 - Mostrar dados da conta.\n")
      escreva("2 - Consultar saldo da conta.\n")
      escreva("3 - Depositar valor na conta.\n")
      escreva("4 - Sacar valor na conta.\n")
      escreva("5 - Sair do programa.\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      limpa()

      escolha(opcao) {
        caso '1':
          mostrarDados(nome, cpf, agencia, conta)
          pare

        caso '2':
          escreva("Saldo atual: R$ ", saldo, "\n")
          pare

        caso '3':
          escreva("Digite o valor para depósito: R$ ")
          leia(valor)
          saldo = depositarValor(saldo, valor)
          escreva("Depósito realizado com sucesso!\nNovo saldo: R$ ", saldo, "\n")
          pare

        caso '4':
          escreva("Digite o valor para saque: R$ ")
          leia(valor)
          se (valor <= saldo) {
            saldo = sacarValor(saldo, valor)
            escreva("Saque realizado com sucesso!\nNovo saldo: R$ ", saldo, "\n")
          } senao {
            escreva("Saldo insuficiente!\n")
          }
          pare

        caso '5':
          escreva("Encerrando o programa. Até logo!\n")
          pare
      }

    } enquanto (opcao != '5')

  }
}
