programa{

	funcao inicio(){

	cadeia mensagem
  real calcula

		escreva("Bem Vindo ",mensagem)  // Chama o procedimento
		
	     escreva("O resultado do primeiro cálculo é: ", calcula(3.0 , 4.0),"\n") 		// Chama a função no escreva		
	     escreva("\nO resultado do segundo cálculo é: ", calcula( 7.0 , 2.0),"\n")  // Chama a função no escreva		

	     escreva("Tchau ",mensagem)  // Chama o procedimento
  }
 	funcao cadeia mensagem (cadeia texto){
	
 		inteiro i
		
		// Insere uma linha antes do texto da mensagem		
		para (i = 0; i < 50; i++){
		
		  escreva ("-")
    }
		
		escreva ("\n", texto, "\n") // escreve a mensagem
		
		// Insere uma linha após do texto da mensagem
		para (i = 0; i < 50; i++){
		
		  escreva ("-")
		

		escreva ("\n")
    }
    retorne texto
 }

	// Função que realiza um cálculo e retorna o resultado
	funcao real calcula (real a, real b){
		real resultado
		
		resultado = (a * a) + (b * b)
		
		retorne resultado
  }
 }
