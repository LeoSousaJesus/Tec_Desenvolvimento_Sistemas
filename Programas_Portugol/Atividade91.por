

programa
{
  inclua biblioteca Matematica --> mat
	// função principal
	funcao inicio ()
	{
		// declaração de variáveis
		real n1, n2, n3,media

		// informa os números para calcular a média
		escreva ("Informe a média 1: " )
		leia (n1)
		escreva("Informe a média 2: ")
		leia (n2)
		escreva ("Informe a média 3: ")
		leia (n3)

		// cálculo da média
		media = (n1 + n2 + n3) / 3 

		// limpa console
		limpa()
		
		// arredonda média
		escreva ("A média final é: ", mat.arredondar(media, 2), "\n\n")


		// verifica a média
		se (n1 < media)
		{ 
			escreva ("A média 1 é menor que a média final\n") 
		}
		
		se (n2 < media) 
		{
			escreva ("A média 2 é menor que a média final\n")
		}
		
		se (n3 < media)
		{
			escreva ("A média 3 é menor que a média final\n")
		}		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1374; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */