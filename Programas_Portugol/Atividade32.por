programa {
    funcao inicio() {
        // Variáveis
        cadeia nome
        inteiro ano = 2025
        inteiro digito = ano % 100
        inteiro sequencia = 1
        
        escreva(" SISTEMA DE MATRÍCULAS DA ACADEMIA \n")
        escreva("Ano atual: ", ano, "\n\n")
        
        para (inteiro i = 1; i <= 5; i++) {
            escreva("Cadastro do aluno ", i, "\n")
            escreva("Digite o nome do aluno: ")
            leia(nome)
            
            // Formatando matrícula com 2 dígitos
            escreva("Matrícula automática: ", digito)
            se (sequencia < 10) {
                escreva("0", sequencia)  // Adicionar o zero à esquerda para números < 10
            } senao {
                escreva(sequencia)
            }
            
            escreva("\n\n")
            sequencia++  // Incrementa a sequencia
        }
        
        escreva("Cadastro concluído para 5 novos alunos!")
    }
}
