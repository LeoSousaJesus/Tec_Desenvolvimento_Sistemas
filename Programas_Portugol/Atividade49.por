/*
  Crie um programa para armazenar os 6 caracteres da senha do usuário. A senha só pode ter as vogais (a, e, i, o e u). 
  Depois de armazenar cada vogal em uma posição, seu programa deve realizar a criptografia da senha.
  A lógica da criptografia é: cada letra 'a' deve ser substituída pelo caractere 'z', letra 'e' pelo caractere '3', letra 'i' pelo caractere 'l', letra 'o' pelo caractere '0' e letra 'u' pelo caractere $.
  Após criptografar a senha, o programa deve apresentar a senha digitada e a senha criptografada.
*/



programa
{
  inclua biblioteca Texto --> t
    funcao inicio()
    {
        cadeia senha[6], senhaCriptografada[6]
        inteiro i
        logico validacao
        
        escreva("Digite uma senha com 6 vogais:\n")
        
        // Loop para entrada de vogal válidas
        para (i = 0; i < 6; i++) {
            faca {
                escreva("Digite a vogal ", i + 1, ": ")
                leia(senha[i])
                
                // Converte para minúsculo para facilitar a comparação
                senha[i] = t.caixa_baixa(senha[i])
                
                validacao = (senha[i] == 'a' ou senha[i] == 'e' ou senha[i] == 'i' ou senha[i] == 'o' ou senha[i] == 'u')
                
                se (validacao) {
                    escreva("Vogal inválida! Digite apenas a, e, i, o ou u.\n")
                }
            } enquanto (nao validacao)
        }
        
        // Criptografa cada vogal
        para (i = 0; i < 6; i++) {
            escolha (senha[i]) {
                caso 'A':
                    senhaCriptografada[i] = 'z'
                    pare
                caso 'B':
                    senhaCriptografada[i] = '3'
                    pare
                caso 'I':
                    senhaCriptografada[i] = 'l'
                    pare
                caso 'O':
                    senhaCriptografada[i] = '0'
                    pare
                caso 'U':
                    senhaCriptografada[i] = '$'
                    pare
            }
        }
        
        escreva("\nA senha original é: ")
        para (i = 0; i < 6; i++) {
            escreva(senha[i])
        }
        
        escreva("\nA senha criptografada é: ")
        para (i = 0; i < 6; i++) {
            escreva(senhaCriptografada[i])
        }
        escreva("\n")
    }
}
