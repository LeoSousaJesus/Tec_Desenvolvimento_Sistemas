 //Exemplo	75:	Exemplo	de	função	sem	retorno
 programa	{
  funcao	calcularPorcentagem() {
    escreva("Dentro	da	função	calcular	porcentagem\n")
			real	numero	= 30.0,	porcentagem	=	20.0 ,	resultado
		  resultado	=	(numero	*	(porcentagem/100))	    
      escreva	("O	resultado	da	porcentagem	é	",	resultado)
	}
	
	funcao	inicio()	{
	  escreva("Início	do	programa	principal")
	  escreva("\n")
	
  calcularPorcentagem()
  escreva("\n")
  escreva("Final	do	programa	principal")
  }
 }