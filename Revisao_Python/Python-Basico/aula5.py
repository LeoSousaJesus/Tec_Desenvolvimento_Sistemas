# Lista de 5 elementos
frutas = ["maçã", "banana", "laranja", "uva", "pera"]
         # 0        1           2        3      4
print("Mostrar toda a lista: ", frutas)

# Buscar um elemento da lista
print("Pegar um elemento da lista: ", frutas[2])

# Modificar uma lista

# Adicionar um elemento
frutas.append("abacaxi")
# O append adiciona um elemento no final da lista

# Remover um elemento
frutas.remove("laranja")
# O remove remove o elemento que você passar como parâmetro
print("Lista modificada: ", frutas)
print(frutas[2]) # Agora o elemento na posição 2 é a banana

# Inserir um elemento em uma posição específica
frutas.insert(0, "kiwi")# maça está na posição 0
print("Lista com o kiwi na posição 0: ", frutas)