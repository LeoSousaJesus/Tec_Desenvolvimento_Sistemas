programa {
  funcao inicio() {

  // delcaração de variável
    cadeia nome
    cadeia profissao

    escreva("Por favor, informe o seu nome: ")
    leia(nome)

    escreva("Nome informado: ", nome)

    escreva("Por favor, informe a sua profissão: ")
    leia(profissao)

  
    escreva("Profissão informada: ", profissao)

 
    se (profissao == "programador" ou profissao == "Programador"){
      escreva("Parabéns, ", nome, "! Você ganhou acesso VIP à plataforma por ser programador.")
    }
    senao
      escreva("Usuário ", nome, " cadastrado com sucesso.")
  }
}
