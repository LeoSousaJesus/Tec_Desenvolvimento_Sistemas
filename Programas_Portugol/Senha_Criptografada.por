/*
    Crie um programa para armazenar os 6 caracteres da senha do usuário. A senha só pode ter as vogais (a, e, i, o e u). Depois de armazenar cada vogal em uma posição, seu programa deve realizar a criptografia da senha.
A lógica da criptografia é: cada letra 'a' deve ser substituída pelo caractere 'z', letra 'e' pelo caractere '3', letra 'i' pelo caractere 'l', letra 'o' pelo caractere '0' e letra 'u' pelo caractere $.
Após criptografar a senha, o programa deve apresentar a senha digitada e a senha criptografada.
*/

programa {
    funcao inicio() {
        // Declaração de variáveis
        caracter senhaOriginal[6], senhaCripto[6]
        inteiro i
        
        escreva("Digite sua senha de 6 vogais (a, e, i, o, u):\n")
        
        para (i = 0; i < 6; i++) {
            faca {
                escreva("Digite a ", i+1, "ª vogal: ")
                leia(senhaOriginal[i])
                
                se (senhaOriginal[i] != 'a' e senhaOriginal[i] != 'e' e senhaOriginal[i] != 'i' e senhaOriginal[i] != 'o' e senhaOriginal[i] != 'u') {
                    escreva("Vogal inválida! Use apenas a, e, i, o ou u.\n")
                }
            } enquanto (senhaOriginal[i] != 'a' e senhaOriginal[i] != 'e' e senhaOriginal[i] != 'i' e senhaOriginal[i] != 'o' e senhaOriginal[i] != 'u')
        }
        
        para (i = 0; i < 6; i++) {
            escolha (senhaOriginal[i]) {
                caso 'a':
                    senhaCripto[i] = 'z'
                    pare
                caso 'e':
                    senhaCripto[i] = '3'
                    pare
                caso 'i':
                    senhaCripto[i] = 'l'
                    pare
                caso 'o':
                    senhaCripto[i] = '0'
                    pare
                caso 'u':
                    senhaCripto[i] = '$'
                    pare
            }
        }
        
        escreva("\nSenha original: ")
        para (i = 0; i < 6; i++) {
            escreva(senhaOriginal[i])
        }
        
        escreva("\nSenha criptografada: ")
        para (i = 0; i < 6; i++) {
            escreva(senhaCripto[i])
        }
    }
}
