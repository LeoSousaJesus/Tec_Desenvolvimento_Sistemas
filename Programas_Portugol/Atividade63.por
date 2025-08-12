programa 
{
    funcao real calcularAumento(real salario, real percentual, real &valorAumento)
    {
        valorAumento = salario * (percentual / 100)
        retorne salario + valorAumento
    }

    funcao inicio()
    {
        real salarioAtual, percentual, novoSalario, aumento
        
        escreva("Digite o salário atual: ")
        leia(salarioAtual)
        
        escreva("Digite o percentual de aumento (%): ")
        leia(percentual)
        
        novoSalario = calcularAumento(salarioAtual, percentual, aumento)
        
        escreva("---------------------------------------------------------------\n")
        escreva("Salário atualizado: ", novoSalario, "\n")
        escreva("Valor do aumento: ", aumento)
    }
}
