programa 
{
	funcao inicio ()
	{	
		// declaração de variáveis
		inteiro preco_parafuso = 1.50
		inteiro preco_arruela  = 2.00
		inteiro preco_porca  = 2.50

		cadeia nome
		real quantidade_parafusos, quantidade_arruelas, quantidade_porcas 
		real total_parafusos, total_arruelas, total_porcas, total_pagar 

		// entrada de dados
		escreva("Digite seu nome: ") 
		leia(nome) 
		
		escreva("\nDigite a quantidade de parafusos que deseja comprar: ") 
		leia(quantidade_parafusos)
		
		escreva("Digite a quantidade de arruelas que deseja comprar: ") 
		leia(quantidade_arruelas)

		escreva("Digite a quantidade de porcas que deseja comprar: ") 
		leia(quantidade_porcas)

		
		total_parafusos = preco_parafuso * quantidade_parafusos
		total_arruelas = preco_arruela * quantidade_arruelas
		total_porcas = preco_porca * quantidade_porcas
		
		total_pagar = total_parafusos + total_porcas + total_arruelas 

		// limpa console
		limpa()
		
		escreva(" nome",nome," \n")
		escreva("===============================\n")
		escreva("quantidade_parafusos",quantidade_parafusos ,"\n")
		escreva("quantidade_arruelas",quantidade_arruelas," \n")
		escreva("quantidade_porcas",quantidade_porcas, "\n")
		escreva("===============================\n")
		escreva( "R$", total_pagar," total_pagar: \n")
	} 
}
