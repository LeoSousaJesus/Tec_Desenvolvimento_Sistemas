programa
{
funcao inicio(){

  // Variaveis
inteiro candidato_a = 0, candidato_b = 0
inteiro brancos = 0, nulos = 0, total_votos = 0
real porcentagem_candidato_a, porcentagem_candidato_b
real porcentagem_brancos, porcentagem_nulos
inteiro voto
caracter opcao

//Aqui é um laço de repetição que o usuario ira escolher um candidato até ele mesmo encerrar a votação.
faca{
limpa()
escreva("Escolha seu candidato ou tecle zero para encerrar\n\n")
escreva("  0 -> Encerrar Votação A\n")
escreva("  1 -> Candidato A\n")
escreva("  2 -> Candidato B\n")
escreva("  3 -> Branco\n")
escreva("\nQualquer número diferente de 0, 1, 2 e 3 anulará o seu voto\n")
escreva("Digite seu voto: ")

leia(voto)
limpa()

escolha (voto){
//Aqui vai a logica dos votos, onde o programa ira passar quando o usuario escolher.
caso 0:
escreva ("Votação encerrada!\n")
pare

caso 1: 
candidato_a = candidato_a + 1 
pare

caso 2: 
candidato_b = candidato_b + 1 
pare

caso 3: 
brancos = brancos + 1 
pare

caso contrario:
nulos = nulos + 1 
}			 
}
enquanto(voto != 0)


total_votos = candidato_a + candidato_b + brancos + nulos


//Aqui é onde funciona a questão das porcentagens de cada candidato
se (total_votos > 0)
{
porcentagem_candidato_a = (candidato_a * 100.0) / total_votos  
porcentagem_candidato_b = (candidato_b * 100.0) / total_votos
porcentagem_brancos = (brancos * 100.0) / total_votos
porcentagem_nulos = (nulos * 100.0) / total_votos

escreva("\n")

escreva("Total de votos: ", total_votos, "\n\n")
escreva("Candidato A: " , candidato_a, " voto(s). ", porcentagem_candidato_a, " % do total\n" )
escreva("Candidato B: ", candidato_b, " voto(s). ", porcentagem_candidato_b, " % do total\n" )
escreva("Brancos: ", brancos, " voto(s). ", porcentagem_brancos, " % do total\n")
escreva("Nulos: ", nulos, " voto(s). ", porcentagem_nulos, " % do total\n")
}
}
}
