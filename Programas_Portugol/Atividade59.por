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
        
        escreva("Digite a quantidade de linhas(altura) da pirâmide: ")
        leia(alturaPiramide)
      
        Ola(usuario)
        piramide(alturaPiramide)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 901; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */