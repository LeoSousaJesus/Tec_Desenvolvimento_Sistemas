programa {
    /*
    Função que calcula aumento salarial
    Recebe:
    - salario (por referência)
    - percentual (por valor)
    Retorna:
    - valor do aumento em reais
    */
    funcao real calcularAumento(real &salario, real percentual) {
        real aumento = salario * (percentual / 100)
        salario = salario + aumento  // Atualiza o salário por referência
        retorne aumento
    }

    funcao inicio() {
        // Declaração de variáveis
        real salario, percentual, valorAumento
        
        // Entrada de dados
        escreva("Digite o salário atual: ")
        leia(salario)
        escreva("Digite o percentual de aumento (%): ")
        leia(percentual)
        
        // Chamada da função (passagem por referência do salário)
        valorAumento = calcularAumento(salario, percentual)
        
        // Saída formatada
        escreva("---------------------------------------------------------------\n")
        escreva("Salário atualizado: ", salario, "\n")
        escreva("Valor do aumento: ", valorAumento, "\n")
    }
}
