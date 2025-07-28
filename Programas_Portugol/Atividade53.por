programa {
    funcao inicio() {
        
        cadeia alunos[50]
        real notas[50][4]
        real media[50]

        escreva("\n\n************ SISTEMA ESCOLAR ************\n")

        para (inteiro i = 0; i < 50; i++) {
            escreva("\nAluno ", i+1, "\n")
            
            escreva("Digite o nome do aluno: ")
            leia(alunos[i])
            
            escreva("Digite as 4 notas do aluno ", alunos[i], ":\n")
            para (inteiro j = 0; j < 4; j++) {
                escreva("Nota do ", j+1, "º Bimestre: ")
                leia(notas[i][j])
            }
            
            media[i] = (notas[i][0] + notas[i][1] + notas[i][2] + notas[i][3]) / 4
        }
        
        escreva("\n\n******************************** RESULTADO FINAL ********************************\n\n")
        para (inteiro i = 0; i < 50; i++) {
            escreva("Aluno: ", alunos[i])
            escreva("\n1º Bimestre: " , notas[i][0] , "\n2º Bimestre: ", notas[i][1] , "\n3º Bimestre: ", notas[i][2], "\n4º Bimestre: " , notas[i][3])
            escreva("\nMédia: ", media[i])
            
            se (media[i] >= 6.0) {
                escreva(" -- Resultado: APROVADO")
            } senao {
                escreva(" -- Resultado: REPROVADO")
            }
            escreva("\n\n------------------------------------------------------------------------------------\n\n")
        }
    }
}
