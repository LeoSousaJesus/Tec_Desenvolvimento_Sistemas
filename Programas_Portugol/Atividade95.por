programa
{
	funcao inicio()
	{
		caracter operador
		
		real resultado = 0.0, operando1, operando2

		escreva("Digite o primeiro número: ")
		leia(operando1)

		escreva("Digite o segundo número: ")
		leia(operando2)

		escreva("\n")
		
		escreva("Agora digite uma das operações ( + - * / ): ")
    leia(operador)

    se(operador == '+'){
      escreva("A soma é: ", operando1 + operando2)
    }senao se(operador == '-'){
      escreva("A subtração é: ",operando1 - operando2)
    }senao se(operador == '*'){
      escreva("A multiplicação é: ",operando1 * operando2)
    }senao se(operador == '/'){
      escreva("A divisão é: ",operando1 / operando2)
    }senao{
      escreva("Codigo invalido")
    }
		// completar o código-fonte
	}
}
