/*
  Crie um algoritmo que receba do usuário um número inteiro e calcule o fatorial.
*/

programa {
    funcao inicio() {
        inteiro numero, fatorial = 1, contador
        
        escreva("Digite um número inteiro para calcular o fatorial: ")
        leia(numero)
        
        se (numero < 0) {
            escreva(" ATENÇÃO! Digite um número positivo, pois não existe fatorial de número negativo!")
            retorne
        }
        
        contador = numero
        enquanto (contador > 1) {
            fatorial *= contador
            contador--
        } 

        escreva("\nO fatorial de ", numero, " é ", fatorial)

    }
}