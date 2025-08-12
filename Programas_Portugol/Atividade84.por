programa {
  funcao inicio() {
   real notateste,notaprova,falta,med

   med = calcularMedia(notateste,notaprova,falta)
    
  }
    funcao real calcularMedia(real notaTeste, real notaProva, real faltas){
       
      escreva("Quanto foi a sua nota do Teste?\n")
      leia(notaTeste)
      escreva("Quanto foi a sua nota da Prova?\n")
      leia(notaProva)
      escreva("Quantas faltas você possui?\n")
      leia(faltas)

     real media = (notaTeste+notaProva) / 2

    se(media >= 7.0 e faltas <= 10){
      escreva("Aprovado\n","A sua media foi: ","(",media,")")
    }senao se(media >=5.0 e media < 6.9 e faltas <= 10){
      escreva("Você esta de recuperação!\n "," A sua media foi: ", "(",media,")")
    }senao se(media < 5.0 ou faltas > 10){
      escreva("Você está reprovado!\n"," A sua media foi: ", "(",media,")")
     }senao{
       escreva("Tente Novamente! ")
     }
      retorne media
    }
  }


