programa {
    funcao inicio() {
        // Declaração de variáveis
        inteiro quantidade
        real valor, total
        
        // Preços
        real preco = 5.50
        real desconto = 4.50
        
        // Entrada de dados
        escreva("O preço do suco é de: R$", preco, "\n")
        escreva("Promoção: Acima de 10 sucos, cada suco sai por R$ ", desconto, "\n\n")
        escreva("Quantos sucos deseja comprar? ")
        leia(quantidade)
        
        // Cálculo do preço
        se (quantidade > 10) {
            valor = desconto
        } senao {
            valor = preco
        }
        
        total = quantidade * valor
        
        // Saída do resultado
        escreva("\nQuantidade: ", quantidade, " sucos\n")
        escreva("Preço unitário: R$ ", valor, "\n")
        escreva("Total a pagar: R$ ", total)
    }
}