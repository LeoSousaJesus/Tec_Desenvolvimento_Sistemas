/*
Escreva um algoritmo que leia o gênero de uma certa quantidade de pessoas e escreva a quantidade de pessoas que são do 
gênero masculino e a quantidade de pessoas que são do gênero feminino. A entrada é dada como uma sequência de caracteres formada 
apenas pelas letras "F", "M", "f" ou "m" e é lida toda de uma vez. As letras "F" e "f" representam pessoas do gênero feminino, 
enquanto as letras "M" e "m" representam pessoas do gênero masculino.
Ex.: a entrada "fmmFFMMMFfmfF" indica 7 mulheres e 6 homens.
*/

programa
{
    inclua biblioteca Texto --> t
    
    funcao inicio()
    {
        caracter sequencia
        inteiro mulheres = 0, homens = 0
        
        escreva("Digite a sequência de gêneros (M/F): ")
        leia(sequencia)
        
        
        para(inteiro i = 0; i < t.numero_caracteres(sequencia); i++) {
            inteiro letra = t.numero_caracteres(sequencia, i)
            
            se(letra == 'F' ou letra == 'f') {
                mulheres++
            }
            senao se(letra == 'M' ou letra == 'm') {
                homens++
            }
        }
        
        escreva("\nResultado final:\n")
        escreva("Mulheres (F/f): ", mulheres, "\n")
        escreva("Homens (M/m): ", homens)
    }
}