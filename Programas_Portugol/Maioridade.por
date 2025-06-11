programa {
  funcao inicio() {

  caractere nome
  inteiro idade

   escreva("Informe seu nome: ")
   leia(nome)

   escreva("Informe sua idade: ")
   leia(idade)

   se idade >= 18 entao {
      escreva(nome, ", você é maior de idade.")
   senao
      escreva(nome, ", você é menor de idade.")
   fimse
  }
}
}
