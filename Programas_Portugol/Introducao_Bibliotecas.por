programa
{
	inclua biblioteca Calendario --> c
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> t
	
	
	funcao inicio()
	{

	real numero = 16.1891326722
	cadeia nome, cor

	escreva("Qual o seu nome? ")
	leia(nome)
	escreva("Qual a sua cor preferida? ")
	leia(cor)
	

	limpa()
		
	
		escreva("Data: ", c.dia_mes_atual(), "/", c.mes_atual(), "/", c.ano_atual())
		escreva("\n Hora: ", c.hora_atual(falso), ":", c.minuto_atual())
		escreva("\n Seu número da sorte: ", u.sorteia(1, 100))
		escreva("\n Valor arrendondado: ", m.arredondar(numero, 2))
		escreva("\n Bem Vindo(a) ", t.caixa_alta(nome))
		escreva("\n Cor preferida: ", t.caixa_baixa(cor))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */