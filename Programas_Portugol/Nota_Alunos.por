programa {
    funcao inicio() {
        // Declaração das variáveis
        real nota1, nota2, nota3, nota4, media
        
        // Entrada dos dados
        escreva("Digite as 4 notas do aluno (0 a 10):\n")

        escreva("Digite a Nota do 1º Bimestre: ")
        leia(nota1)

        escreva("Digite a nota do 2º Bimestre: ")
        leia(nota2)

        escreva("Digite a nota do 3º Bimestre: ")
        leia(nota3)

        escreva("Digite a nota do 4º Bimestre: ")
        leia(nota4)

        faca {
            
        } enquanto (nota1 < 0 ou nota1 > 10)

        faca {
        } enquanto (nota2 < 0 ou nota2 > 10)
        
        faca {

        } enquanto (nota3 < 0 ou nota3 > 10)
        
        faca {
        } enquanto (nota4 < 0 ou nota4 > 10)
        
        
        media = (nota1 + nota2 + nota3 + nota4) / 4
        
        escreva("\nMédia final: ", media, "\n")
        
        se (media >= 7.0) {
            escreva("APROVADO! Parabéns!\n")
        }
        senao {
            escreva("Aluno está de RECUPERAÇÃO\n")
        }
    }
}