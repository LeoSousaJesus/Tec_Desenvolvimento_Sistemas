//Exemplo	82:	Exemplo	de	função	com	passagem	de	parâmetro	por	valor.
	
programa	{						
funcao	real	calcularPrecoBiscoito(inteiro	qtdBiscoito,	real	valorBiscoito	)
 {																
real	resultado
											
se	(qtdBiscoito	>	10){
	valorBiscoito	=	valorBiscoito	*0.9
		escreva("Desconto	de	10%	devido	a	quantidade	da	compra.	Valor	R$",	valorBiscoito)
  }
	resultado	=	valorBiscoito	*	qtdBiscoito
	retorne	resultado
	}
	funcao	inicio()	{
    inteiro	quantidadeBiscoito
    real	valorBiscoito,	valorPagar
      escreva	("Digite	a	quantidade	de	biscoitos	desejada:	")
      leia(quantidadeBiscoito)
      escreva("Digite	o	valor	do	biscoito	desejado:")
      leia(valorBiscoito)

      valorPagar	=	calcularPrecoBiscoito(quantidadeBiscoito,	valorBiscoito)
      escreva("\n")
      escreva("O	biscoito	sem	desconto	R$",	valorBiscoito)
      escreva("\n")
      escreva("Valor	total	a	ser	pago	é	de	R$",valorPagar)
 }
}