/*
    Faça um algoritmo utilizando o portugol studio que receba o nome, data de 
    nascimento, cidade onde mora, peso, altura, tipo sanguíneo, cor preferida
    e profissão de uma pessoa e na sequência exiba todas essas informações na tela.
*/

programa {
  funcao inicio() {
    cadeia nome, dataNascimento, cidade, tipoSanguineo, corPreferida, profissao
    real peso, altura

    escreva("Digite o nome: ")
    leia(nome)

    escreva("Digite a data de nascimento (dd/mm/aaaa): ")
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

    escreva("\n--- Dados do Usuário ---\n")
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
