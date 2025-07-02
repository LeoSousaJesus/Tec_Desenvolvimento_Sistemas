programa {
  funcao inicio() {
        inteiro i, a, b, linhas = 50
        
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
