programa
{
    funcao inicio()
    {
        inteiro idade
        cadeia alfabetizado
        
        escreva("*** VERIFICAÇÃO DE DIREITO A VOTO ***\n")
        escreva("Informe sua idade: ")
        leia(idade)
        
        escreva("Você é alfabetizado? (S/N): ")
        leia(alfabetizado)
        
        se(idade < 16) {
            escreva("\nResultado: NÃO PODE VOTAR (menor de 16 anos)")
        }
        
        se((idade >= 16 e idade < 18) ou idade > 70 ou alfabetizado == "N" ou alfabetizado == "n") {
            escreva("\nResultado: VOTO FACULTATIVO")
        }
        
        se(idade >= 18 e idade <= 70 e (alfabetizado == "S" ou alfabetizado == "s")) {
            escreva("\nResultado: VOTO OBRIGATÓRIO")
        }
    }
}
