programa{
    // Incluir a biblioteca Matematica
    inclua biblioteca Matematica --> m

    // Definindo a função para calcular a média de 3 notas
    funcao real calcularMedia(real nota1, real nota2, real nota3)
    {
        real media = (nota1 + nota2 + nota3) / 3.0
        retorne media
    }

    funcao inicio()
    {
        real n1, n2, n3
        real mediaCalculada
        
        // Solicitando as três notas ao usuário
        escreva("Digite a primeira nota: ")
        leia(n1)
        
        escreva("Digite a segunda nota: ")
        leia(n2)
        
        escreva("Digite a terceira nota: ")
        leia(n3)
        
        // Chama a função calcularMedia com as notas informadas
        mediaCalculada = calcularMedia(n1, n2, n3)
        
        // Arredondar a média para 2 casas decimais com a função arredondar da biblioteca Matemática
        escreva("\nMédia das notas: ", m.arredondar(mediaCalculada, 2))
    }
}
