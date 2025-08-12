programa
{
    funcao logico Vogal(caracter letra)
    {
      retorne letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u'
    }

    funcao inicio()
    {
        caracter letra
        
        escreva("Digite uma letra: ")
        leia(letra)
        
        se(Vogal(letra)) {
            escreva("\nA letra '", letra, "' é uma vogal\n")
        } senao {
            escreva("\nA letra '", letra, "' não é uma vogal\n")
        }
    }
}
