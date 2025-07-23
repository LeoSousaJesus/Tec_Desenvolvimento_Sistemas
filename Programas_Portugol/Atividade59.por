programa {

    funcao Ola(cadeia nome) {
        escreva("Olá, ", nome, "! Seja bem-vindo!\n\n")
    }

    
    funcao piramide(inteiro altura) {   
        para (inteiro linha = 1; linha <= altura; linha++) {
            para (inteiro espaco = 1; espaco <= altura - linha; espaco++) {
                escreva(" ")
            }
            para (inteiro asterisco = 1; asterisco <= linha; asterisco++) {
                escreva("*")
            }
            
            escreva("   ")
            
            para (inteiro asterisco = 1; asterisco <= linha; asterisco++) {
                escreva("*")
            }
            
            escreva("\n")
        }
    }

    funcao inicio() {
        cadeia usuario
        inteiro alturaPiramide
        
        escreva("Digite seu nome: ")
        leia(usuario)
        
        escreva("Digite a altura que deseja para a pirâmide: ")
        leia(alturaPiramide)
      
        Ola(usuario)
        piramide(alturaPiramide)
    }
}