programa{

inclua biblioteca Util --> u
	funcao inicio(){
//variaveis
    inteiro coluna_inicial = 0
    inteiro passos = 10

		animar(coluna_inicial, passos)

    } 

    // Aqui ira iniciar a Animação da largata
  funcao animar(inteiro coluna_inicial, inteiro passos){

    inteiro coluna_final = coluna_inicial + passos
		//Aqui ira calcular a posiçao final da largata
    para (inteiro coluna = coluna_inicial; coluna < coluna_final; coluna++){
				para (inteiro andando = 0; andando <= 1; andando++)
  	{
    limpa()

		desenhar_lagarta(coluna, andando)
		u.aguarde(500)
  
  }
}
    limpa()
		desenhar_lagarta(coluna_final, 0)
		
 }

 //Aqui sera o movimento da largata
  funcao desenhar_lagarta(inteiro coluna, inteiro andando){
		se (andando == 0){
      branco((coluna * 3) + 14)
				escreva("\\ /\n")
					branco((coluna * 3))
						escreva("( )( )( )( )( 0.0 )")
}
    senao{
      branco((coluna * 3) + 7)
		    escreva("( )")
			    branco(4)
		        escreva("\\ /\n")
	            branco((coluna * 3) + 2)
                escreva("( )( ) ( )( 0.0 )")	
}
    escreva("\n")
}

//Aqui ele ira mostrar espaços em branco como se fosse rastros da largata 
  funcao branco(inteiro quantidade){

		inteiro brancos = 1

	  enquanto (brancos <= quantidade){
			escreva (" ")
        brancos++
		}
	}
}
