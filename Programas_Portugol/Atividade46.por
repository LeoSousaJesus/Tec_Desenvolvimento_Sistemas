/*
Crie um algoritmo em Portugol para cadastrar 25 pessoas, e na sequência exiba os dados na tela.
Dados a serem cadastrados:
- Nome completo.
- Idade.
- CPF.
- Gênero.
- E-mail.
- Telefone.
- Cidade onde mora.
- Profissão.
- Escolaridade.
*/




programa {

   funcao inicio() {
          cadeia nome[2], cpf[2], email[2], telefone[2], cidade[2], profissao[2], escolaridade[2]
          inteiro idade[2]
          caracter genero[2]

          
 inteiro i = 0
          faca {
          escreva("numero ",i+1," cadastro:\n")
          escreva("Digite o seu nome: ")
          leia(nome[i])

          escreva("Digite a sua idade: ")
          leia(idade[i])

          escreva("Digite o seu CPF: ")
          leia(cpf[i])

          escreva("Digite o seu gênero: ")
          leia(genero[i])

          escreva("Informe o seu principal email: ")
          leia(email[i])

          escreva("Informe o seu telefone: ")
          leia(telefone[i])

          escreva("Informe a cidade onde mora: ")
          leia(cidade[i])

          escreva("Informe sua profissão: ")
          leia(profissao[i])

          escreva("Informe a sua escolaridade: ")
          leia(escolaridade[i])

            i++
          } enquanto(i<2)
   }
  }

