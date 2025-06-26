programa {
    funcao inicio() {
        cadeia estacao
        
        escreva("Digite a estação do ano (Outono, Inverno, Primavera ou Verão): ")
        leia(estacao)
        
        se (estacao == "Outono") {
            escreva("O Outono começa em 20 de março")
        } senao se (estacao == "Inverno") {
            escreva("O Inverno começa em 21 de junho")
        } senao se (estacao == "Primavera") {
            escreva("A Primavera começa em 22 de setembro")
        } senao se (estacao == "Verão") {
            escreva("O Verão começa em 21 de dezembro")
        } senao {
            escreva("Inválido! Digite corretamente: Outono, Inverno, Primavera ou Verão")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 695; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */