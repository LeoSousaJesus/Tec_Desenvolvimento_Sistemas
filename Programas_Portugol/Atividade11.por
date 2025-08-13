/*
  A cada final de ano, os pais entram em desespero para calcular as notas de seus filhos, para saber se eles vão viajar para a Disneylândia ou para as aulas de reforço.
Portanto, crie um algoritmo em portugol que recebe 4 notas de 0 a 10, calcule a média do aluno,  retorne a média final e se o aluno está aprovado ou de recuperação (média necessária para aprovação = nota 7)
*/

programa
{
    funcao inicio()
    {   
        // Declaração das variáveis
        real nota1, nota2, nota3, nota4, media
        
        escreva("Informe a nota 1: ")
        leia(nota1)
        
        escreva("Informe a nota 2: ")
        leia(nota2)
        
        escreva("Informe a nota 3: ")
        leia(nota3)
        
        escreva("Informe a nota 4: ")
        leia(nota4)
        
        // Cálculo da média
        media = (nota1 + nota2 + nota3 + nota4) / 4
        
        // Exbição do resultado
        escreva("\nMédia final: ", media)
        
        // Verificação de aprovação
        se(media >= 7.0) {
            escreva("\nRESULTADO: Aprovado! Disneylandia!\n")
        }
        senao {
            escreva("\nRESULTADO: Recuperação! Aulas de reforço!\n")
        }
    }
}