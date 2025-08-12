programa{

inclua biblioteca Util --> u

   funcao inicio(){
      inteiro matriz[3][3]
      inteiro i, j, det

      escreva("=== MATRIZ 3x3 COM NÚMEROS ALEATÓRIOS ===\n\n")
      para (i = 0; i < 3; i = i + 1){
         para (j = 0; j < 3; j = j + 1){
            matriz[i][j] = u.sorteia(0, 99)
            escreva(matriz[i][j], "\t")
         }
         escreva("\n")
      }

      det = matriz[0][0]*matriz[1][1]*matriz[2][2] +
            matriz[0][1]*matriz[1][2]*matriz[2][0] +
            matriz[0][2]*matriz[1][0]*matriz[2][1] -
            matriz[0][2]*matriz[1][1]*matriz[2][0] -
            matriz[0][0]*matriz[1][2]*matriz[2][1] -
            matriz[0][1]*matriz[1][0]*matriz[2][2]

      escreva("\n Resultado da determinante: ", det, "\n")
   }
}
