programa
{
	// incluir biblioteca
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Sons --> s
	
	funcao inicio()
	{
		// Criar janela
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(900, 600)
		g.definir_titulo_janela("Teste")


		inteiro corTexto = g.criar_cor(0, 255, 0)
		inteiro corJanela = g.criar_cor(0, 0, 0)
		g.definir_cor(corJanela)
		g.limpar()


		// Inserir texto
		g.definir_cor(corTexto)
		g.desenhar_texto(50, 50, "Primeiro Teste")
		g.definir_tamanho_texto(60.0)
		
		// Inserir figuras
		inteiro imagem = g.carregar_imagem("capa.jpeg")
		g.desenhar_imagem(400, 100, imagem)
		g.definir_cor(g.COR_AZUL)
		g.desenhar_elipse(20, 100, 100, 100, verdadeiro)
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(20, 250, 120, 120, falso, verdadeiro)
		g.definir_cor(g.COR_VERDE)
		g.desenhar_retangulo(20, 430, 200, 120, falso, verdadeiro)
		

		
		// Inserir som
		inteiro som = s.carregar_som("molchat_doma_sudno.mp3")
		s.reproduzir_som(som, verdadeiro)
		s.definir_volume(100)
		
		// Renderizar
		g.renderizar()
		u.aguarde(10000)

		s.liberar_som(som)
		 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */