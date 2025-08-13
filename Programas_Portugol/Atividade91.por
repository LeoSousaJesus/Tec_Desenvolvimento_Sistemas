programa
{
  inclua biblioteca Matematica --> mat
	// função principal
	funcao inicio ()
	{
		// declaração de variáveis
		real m1, m2, m3,media

		// informa os números para calcular a média
		escreva ("Informe a média 1: " )
		leia (m1)
		escreva("Informe a média 2: ")
		leia (m2)
		escreva ("Informe a média 3: ")
		leia (m3)

		// cálculo da média
		media = (m1 + m2 + m3) / 3 

		// limpa console
		limpa()
		
		// arredonda média
		escreva ("A média final é: ", mat.arredondar(media, 2), "\n\n")


		// verifica a média
		se (m1 < media)
		{ 
			escreva ("A média 1 é menor que a média final\n") 
		}
		
		se (m2 < media) 
		{
			escreva ("A média 2 é menor que a média final\n")
		}
		
		se (m3 < media)
		{
			escreva ("A média 3 é menor que a média final\n")
		}		
	}
}
