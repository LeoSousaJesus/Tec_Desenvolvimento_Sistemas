frase = "turma caterpillar"

#len() -> retorna o tamanho da string
print("Tamanho da frase: ",len(frase))

#capitalize() -> Primeira letra maiúscula
print("Frase com primeira letra maiúscula: ", frase.capitalize())

#upper() -> Todas as letras maiúsculas
#lower() -> minúsculas
print("Frase em maiúscula: ",frase.upper())

#count() -> Conta quantas vezes um caractere aparece na string
print("Contagem da letra 'a': ", frase.count("a"))

#title() -> Primeira letra de cada palavra maiúscula
nomes = "ana mario brega"
print("Nomes com primeira letra de cada palavra maiúscula: ", nomes.title())

#replace() -> Substitui uma parte do string por outra (substiuição de palavras)
texto = "Hoje na aula, teve aula de Python. e na aula anterior, teve aula de Portugol."
print("Texto para ser mudado: \n", 
      texto.replace("aula", "classe"),"\n", 
      texto.replace("Portugol","O Suco da programação"))
#Palavra a ser substituída, palavra nova
