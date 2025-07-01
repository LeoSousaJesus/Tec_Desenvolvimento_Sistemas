    programa {
    funcao inicio() {
        // Declaração do vetor
        cadeia nomes[25], generos[25], cpfs[25], cidades[25], escolaridades[25], profissoes[25], telefones[25], emails[25]
        inteiro idades[25], i   

        // Entrada de dados
        para (i = 0; i < 5; i++) {
            escreva("Dados a serem cadastrados: \n\n")
            escreva(i+1, "º cadastro: \n")

            escreva("Informe o nome completo: \n")
            leia(nomes[i])

            escreva("Informe o gênero: \n")
            leia(generos[i])

            escreva("Informe a idade: \n")
            leia(idades[i])

            escreva("Informe o CPF: \n")
            leia(cpfs[i])

            escreva("Informe a cidade onde mora: \n")
            leia(cidades[i])

            escreva("Informe o grau de escolaridade: \n")
            leia(escolaridades[i])

            escreva("Informe a profissão: \n")
            leia(profissoes[i])

            escreva("Informe o telefone: \n")
            leia(telefones[i])

            escreva("Informe o email: \n")
            leia(emails[i])
        }

        // Exibição dos dados cadastrados
        para (i = 0; i < 25; i++) {
            escreva("\n", i+1, "º cadastrado\n")
            escreva("Nome: ", nomes[i], "\n")
            escreva("Gênero: ", generos[i], "\n") 
            escreva("Idade: ", idades[i], "\n") 
            escreva("CPF: ", cpfs[i], "\n") 
            escreva("Cidade: ", cidades[i], "\n") 
            escreva("Escolaridade: ", escolaridades[i], "\n") 
            escreva("Profissão: ", profissoes[i], "\n") 
            escreva("Telefone: ", telefones[i], "\n")
            escreva("Email: ", emails[i], "\n\n")   
        }
    }
}