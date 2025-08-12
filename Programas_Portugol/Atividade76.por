programa{

inclua biblioteca Util --> u
  
   funcao inicio(){
      inteiro i, numero

      escreva("=== 20 Números Aleatórios em 4 colunas e 5 linhas ===\n\n")

      para (i = 1; i <= 20; i = i + 1){
         numero = u.sorteia(1, 100)
         escreva("[", numero , "] ", "\t")
         se (i % 4 == 0){
            escreva("\n")
         }
      }
   }
}