programa{
    funcao inicio(){
        inteiro opcao = 1
        real a, b, x

        enquanto (opcao != 0)
        {
            escreva("\n--- CALCULADORA DE EQUAÇÃO DO 1º GRAU (ax + b = 0) ---\n")

            escreva("Digite o valor de a: ")
            leia(a)

            se (a == 0)
            {
                escreva("O valor de 'a' não pode ser zero. Isso não é uma equação do 1º grau.\n")
            }
            senao
            {
                escreva("Digite o valor de b: ")
                leia(b)

                x = -b / a

                escreva("A solução da equação ", a, "x + ", b, " = 0 é: x = ", x, "\n")
            }

            escreva("\nDeseja resolver outra equação? (1 - Sim | 2 - Não): ")
            leia(opcao)

            se(opcao==2){
                          opcao=0

            }



        }

        escreva("\nPrograma encerrado.")
    }
}