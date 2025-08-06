programa {
  funcao inicio() {
    inteiro i,j,aux,vetor[5]={5,3,4,1,2}
    para(i=0;i<5;i++) {
      para (j=0;j<5-i-1;j++){
        se(vetor[j]>vetor[j+1]){
          aux=vetor[j]
          vetor[j]=vetor[j+1]
          vetor[j+1]=aux
        }
        escreva(vetor, "\n")
      }  
    } 
  }
}