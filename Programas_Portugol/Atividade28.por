programa {

	inclua biblioteca Matematica --> m
	
    funcao inicio() {
        real peso, altura, imc
        
        faca {
            escreva("Digite seu peso (kg, deve ser > 0): ")
            leia(peso)
        } enquanto (peso <= 0)
        
        faca {
            escreva("Digite sua altura (m, deve ser > 0): ")
            leia(altura)
        } enquanto (altura <= 0)
        
        imc = peso / (altura * altura)
        imc = m.arredondar(imc, 2) 
        imc = (imc* 10) / 10
        
        escreva("\nIMC: ", imc, " | Classificação: ")
        
        se (imc < 18.5) {
            escreva("Magreza")
        } senao se (imc < 25) {
            escreva("Normal")
        } senao se (imc < 30) {
            escreva("Sobrepeso")
        } senao {
            escreva("Obesidade")
        }
    }
}