programa{

    funcao inicio(){
        cadeia nome
        caracter categoria, infracao
        inteiro habilitado, idade
        
        escreva("=== Auto Escola Categoria D ===\n")
        escreva("Informe seu nome: ")
          leia(nome)
        escreva("Informe sua idade: ")
          leia(idade)
        escreva("Informe sua possui qual categoria (B ou C): ")
          leia(categoria)
        escreva("Habilitado a quanto tempo? ", "\n")
          leia(habilitado)
        escreva("Possui alguma infração nos últimos doze meses? (S)/(N) ","\n")
          leia(infracao)

        limpa()
          
        se(idade > 21 e habilitado >= 2 e infracao == "N" ou infracao == "n"){
          escreva("Você esta apto para tirar a carteira de motorista do tipo D!")
        }senao{
          escreva("Você não esta apto!")
        }
    }
}


