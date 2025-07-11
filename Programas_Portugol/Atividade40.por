programa
{
    funcao inicio()
    {
        inteiro idade
        caracter alfabetizado, continue
        
        faca {
            escreva("Informe a sua idade: ")
            leia(idade)
            
            escreva("Você é alfabetizado? [S] para SIM ou [N] para NÂO: ")
            leia(alfabetizado)
            
            se (idade >= 18 e idade <= 70 e alfabetizado == "S") {
                escreva("O seu voto é OBRIGATÓRIO\n")
            }
            senao se ((idade >= 16 e idade < 18) ou idade > 70 ou alfabetizado == "N") {
                escreva("O seu voto é FACULTATIVO \n")
            }
            senao {
                escreva("ATENÇÂO VOCÊ NÃO PODE VOTAR (menor de 16 anos)\n")
            }
            
            escreva("\nDeseja fazer outra verificação? (S/N): ")
            leia(continue)
            
        } enquanto (continue == "S")
        
        escreva("\nPrograma encerrado. Obrigado pelas informações!\n")
  }
}