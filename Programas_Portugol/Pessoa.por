programa {
  funcao inicio() {
    cadeia nome, dataNascimento, cidade, tipoSanguineo, corPreferida, profissao
    real peso, altura

    escreva("Digite o nome: ")
    leia(nome)

    escreva("Digite a data de nascimento (dia/mês/ano): ")
    leia(dataNascimento)

    escreva("Digite a cidade onde mora: ")
    leia(cidade)

    escreva("Digite o peso (kg): ")
    leia(peso)

    escreva("Digite a altura (m): ")
    leia(altura)

    escreva("Digite o tipo sanguíneo: ")
    leia(tipoSanguineo)

    escreva("Digite a cor preferida: ")
    leia(corPreferida)

    escreva("Digite a profissão: ")
    leia(profissao)

    escreva("\n--- Dados de Cadastro ---\n")
    escreva("Nome: ", nome, "\n")
    escreva("Data de Nascimento: ", dataNascimento, "\n")
    escreva("Cidade: ", cidade, "\n")
    escreva("Peso: ", peso, " kg\n")
    escreva("Altura: ", altura, " m\n")
    escreva("Tipo Sanguíneo: ", tipoSanguineo, "\n")
    escreva("Cor Preferida: ", corPreferida, "\n")
    escreva("Profissão: ", profissao, "\n")
  }
}