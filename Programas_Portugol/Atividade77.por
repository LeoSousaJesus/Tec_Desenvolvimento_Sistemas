programa
{
   funcao inicio()
   {
      cadeia nomes[4][3]
      inteiro i, j
      inteiro contador = 1

      escreva("=== Cadastro de 12 nomes ===\n\n")

      para (i = 0; i < 4; i = i + 1){
         para (j = 0; j < 3; j = j + 1){
            escreva("Digite o ", contador, "º nome: ")
            leia(nomes[i][j])
            contador = contador + 1
         }
      }

      escreva("\n=== Nomes organizados em 4 linhas e 3 colunas ===\n\n")

      para (i = 0; i < 4; i = i + 1){
         para (j = 0; j < 3; j = j + 1){
            escreva(nomes[i][j], "\t")
         }
         escreva("\n")
      }
   }
}
