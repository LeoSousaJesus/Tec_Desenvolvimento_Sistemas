programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real aa,bb,cc,xx,deltaa,xx1,xx2

      escreva(equacao(deltaa,xx1,xx2,aa,bb,cc,xx))    
  }
  funcao real equacao(real a, real b, real c, real x, real delta, real x1, real x2){
    real x,x1,x2
    
    escreva("Digite o valor de a: ")
    leia(a)
     escreva("Digite o valor de b: ")
    leia(b)
     escreva("Digite o valor de c: ")
    leia(c)

    delta = (b*b) - (4*a*c)

    x1 = (-b + mat.raiz(delta, 2)) / (2*a)
    x2 = (-b - mat.raiz(delta, 2)) / (2*a)

    escreva(delta,"\n")
    escreva(x1,"\n")
    escreva(x2,"\n")


    retorne delta
  }

}

