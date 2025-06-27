programa
{
	
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia nome
		inteiro quantidade_caracteres, i, vogais = 0, consoantes = 0
		caracter comparacao

		escreva("Informe o nome: ")
		leia(nome)

		nome = t.caixa_alta(nome)

		quantidade_caracteres = t.numero_caracteres(nome)

		para(i = 0; i < quantidade_caracteres; i++){
			comparacao = t.obter_caracter(nome, i)

			se(comparacao == 'A' ou comparacao == 'E' ou comparacao == 'I' ou comparacao == 'O' ou comparacao == 'U'){
				vogais++
				}
				senao {
				 consoantes++
				}
		}

		escreva("Quantidade de vogais: ", vogais)
		escreva("\nQuantidade de consoantes: ", consoantes)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 658; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */