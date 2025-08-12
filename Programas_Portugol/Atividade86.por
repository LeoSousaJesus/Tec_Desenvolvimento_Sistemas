programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
   real quanti,distan,prec,custolitro

    
    escreva("R$",custo(quanti,distan,prec,custolitro))
    
  }
  funcao real custo(real quantidade, real distancia, real preco, real custoLitro){
  
    escreva("Qual a quantidade de km por litro ?\n")
    leia(quantidade)
    escreva("Qual a distancia percorrida ? \n")
    leia(distancia)
    escreva("Qual o preço unitario do combustivel? \n")
    leia(preco)

    custoLitro = mat.arredondar((distancia / quantidade) * preco, 2)

    limpa()

  retorne custoLitro
  }
}


