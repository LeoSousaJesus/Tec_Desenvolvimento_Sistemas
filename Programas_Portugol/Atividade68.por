programa{
    funcao real calcularGratificacao(real &salario, inteiro mes) {
        real gratificacao

        se (mes >= 1 e mes <= 5){
            gratificacao = salario * 0.30
        }senao se (mes >= 6 e mes <= 11){
            gratificacao = salario * 0.40
        }senao se (mes == 12){
            gratificacao = salario * 0.60
        }senao {
            gratificacao = 0
        }

        retorne gratificacao
    }
    funcao inicio() {
        real salario, gratificacao
        inteiro mes

        escreva("Digite o salário básico do funcionário: R$ ")
        leia(salario)

        escreva("Digite o número do mês para simular (1 a 12): ")
        leia(mes)

        gratificacao = calcularGratificacao(salario, mes)

        se (gratificacao > 0){
            escreva("A gratificação para o mês ", mes, " é: R$ ", gratificacao)
        }senao {
            escreva("Mês inválido! Por favor, digite um valor entre 1 e 12.")
        }
    }
}