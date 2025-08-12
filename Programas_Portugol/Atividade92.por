programa{
	// função principal
	funcao inicio(){
		
		// declaração de variáveis
		inteiro numero 
		
		// informa um número inteiro
		escreva("Digite um número: ")
		leia(numero)

		
		// verifica se o número informado é múltiplo de 5
		se(numero % 5 == 0) {
			escreva("O número " , numero, " é multiplo de 5")	
		}
		senao{
			escreva("O número " , numero, " não é multiplo de 5")
		}

		escreva("\n")
	}
}

