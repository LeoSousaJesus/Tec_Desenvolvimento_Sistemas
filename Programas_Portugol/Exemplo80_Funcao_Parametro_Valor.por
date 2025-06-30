 //Exemplo	80:	Exemplo	de	função	com	passagem	de	parâmetro	por	valor.
	
programa	{
	funcao	real	calcularPorcentagem(real	numero,	real	porcentagem) {
		real	resultado
		resultado	=	(numero	*	(porcentagem/100))
			retorne	resultado
	}
	
	funcao	inicio()	{
		real	porcentagemCalculada
		porcentagemCalculada =	calcularPorcentagem(30.0,	20.0)
			escreva("A	porcentagem	calculada	foi:	",	porcentagemCalculada)
	}
}