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

programa
{
    funcao inicio()
    {
        cadeia nome[25], cpf[25], email[25], telefone[25], cidade[25], profissao[25], escolaridade[25]
        inteiro idade[25]
        caracter genero[25]
        
        escreva("=== SISTEMA DE CADASTRO ===\n\n")
        para(inteiro i = 0; i < 25; i++)
        {
            escreva("\nPessoa ", i+1, " de 25:\n")
            escreva("Nome completo: ")
            leia(nome[i])
            
            escreva("Idade: ")
            leia(idade[i])
            
            escreva("CPF (somente números): ")
            leia(cpf[i])
            
            escreva("Gênero (M/F): ")
            leia(genero[i])
            
            escreva("E-mail: ")
            leia(email[i])
            
            escreva("Telefone: ")
            leia(telefone[i])
            
            escreva("Cidade: ")
            leia(cidade[i])
            
            escreva("Profissão: ")
            leia(profissao[i])
            
            escreva("Escolaridade: ")
            leia(escolaridade[i])
            
            escreva("\n----------------------------\n")
        }
        
        escreva("\n\n=== DADOS CADASTRADOS ===\n")
        para(inteiro i = 0; i < 25; i++)
        {
            escreva("\nPessoa ", i+1, ":\n")
            escreva("Nome: ", nome[i], "\n")
            escreva("Idade: ", idade[i], " anos\n")
            escreva("CPF: ", cpf[i], "\n")
            escreva("Gênero: ", genero[i], "\n")
            escreva("E-mail: ", email[i], "\n")
            escreva("Telefone: ", telefone[i], "\n")
            escreva("Cidade: ", cidade[i], "\n")
            escreva("Profissão: ", profissao[i], "\n")
            escreva("Escolaridade: ", escolaridade[i], "\n")
            escreva("----------------------------")
        }
    }
}