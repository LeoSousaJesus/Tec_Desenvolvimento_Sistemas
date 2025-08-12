programa{

inclua biblioteca Calendario

   funcao inicio()
   {
      inteiro horaAtual,minutoAtual

      horaAtual = Calendario.hora_atual(falso)
      minutoAtual = Calendario.minuto_atual()

      escreva(horaAtual, ":", minutoAtual,"\n")

      se (horaAtual < 12)
      {
         escreva("Bom dia!\n")
      }
      senao se (horaAtual <= 18)
      {
         escreva("Boa tarde!\n")
      }
      senao
      {
         escreva("Boa noite!\n")
      }
   }
}
