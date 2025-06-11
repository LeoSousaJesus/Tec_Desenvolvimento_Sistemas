
programa {
  funcao inicio() {
    real nota
    escreva("***** Sistema para registro de notas dos alunos *****\n ")
     
    faca{
      escreva("Atenção! Nenhum aluno pode ter nota negativa ou maior que 10. \n ")
      escreva("Digite a nota do aluno:")
      leia(nota)
    } enquanto(nota<0.0 ou nota > 10.0)
  }
}
