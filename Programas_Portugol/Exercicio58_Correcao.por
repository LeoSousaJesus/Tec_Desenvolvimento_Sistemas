programa {
  funcao inicio() {
        inteiro i, a, b, linhas = 5
        
        para (i= 1; i <= linhas; i++) {
          para(a = 1; a <= linhas - i; a++) {
            escreva(" ")
          }
          para(b= 1; b <= (2 * i -1); b++) {
            escreva("*")
          }
          escreva("\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 66; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */