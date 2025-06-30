//Exemplo	81:	Exemplo	de	função	com	passagem	de	parâmetro	por	valor.
 programa	{
 funcao	real	calcularPorcentagem(real	numero,	real	porcentagem)
 {
	real	resultado
	resultado	=	(numero	*	(porcentagem/100))
		retorne	resultado
  }
	funcao	inicio()	{
		real	porcentagemCalculada,	numeroDesejado,	porcentagem
			escreva	("Digite	o	número	que	deseja	calcular	a	porcentagem:	")
			leia(numeroDesejado)
					
      escreva("Digite	a	porcentagem:")
			leia(porcentagem)
			
      porcentagemCalculada =	calcularPorcentagem(numeroDesejado,porcentagem)
		  escreva("A	porcentagem	calculada	foi:	",	porcentagemCalculada)
  }
}
