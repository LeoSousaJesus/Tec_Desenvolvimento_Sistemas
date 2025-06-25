programa
{
	
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(600, 400)
		g.definir_titulo_janela("Teste")

		inteiro cor = g.criar_cor(100, 100, 100)
		
		g.definir_cor(cor)
		g.limpar()

		g.definir_cor(g.COR_AZUL)
		g.desenhar_elipse(100, 100, 150, 150, falso)

		
		g.definir_cor(g.COR_VERDE)
		g.desenhar_retangulo(250, 250, 200, 100, falso, falso)
		
		g.renderizar()
		u.aguarde(10000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */