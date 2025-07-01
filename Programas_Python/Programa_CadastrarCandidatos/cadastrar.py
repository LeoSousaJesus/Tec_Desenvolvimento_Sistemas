# Criar um programa para cadastrar candidatos e que o programa
# possa cadastrar o nome, idade e partido do candidato. E que também mostre os votos e  o resultado do votos
# do candidato.


def cadastrar_candidato():
    candidatos = []

    while True:
        nome = input("Digite o nome do candidato: ")
        idade = int(input("Digite a idade do candidato: "))
        partido = input("Digite o partido do candidato: ")

        if idade < 18:
            print("Candidato deve ter pelo menos 18 anos.")
            continue
        candidato = {
            'nome': nome,
            'idade': idade,
            'partido': partido,
        }
        candidatos.append(candidato)
        continuar = input("Deseja cadastrar outro candidato? (s/n): ")
        if continuar.lower() != 's':
            break
    return candidatos

# votar = input("Deseja votar? (s/n): ")


#def votar_candidato(candidatos):
#    votos = {candidato['nome']: 0 for candidato in candidatos}
    
#    while True:
#        voto = input("Digite o nome do candidato para votar (ou 'sair' para encerrar): ")
#        if voto.lower() == 'sair':
#            break
#        if voto in votos:
#            votos[voto] += 1
#            print(f"Voto registrado para {voto}.")
#        else:
#            print("Candidato não encontrado.")
    
#    return votos



#if votar.lower() == 's':
#   print("Bem-vindo ao sistema de votação, Escolha um candidato para votar.")
#   print(candidatos := cadastrar_candidato())
#else:
#    print("Programa encerrado. Voto encerrado.")

#def main():
#    candidatos = cadastrar_candidato()
#    print("\nResultados dos Candidatos:")
#    mostrar_resultados(candidatos)