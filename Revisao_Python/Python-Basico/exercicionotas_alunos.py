# Programa para verificar as notas por bimestre de um aluno e sua média final

nota1 = float(input("Digite a nota do 1º bimestre: "))
nota2 = float(input("Digite a nota do 2º bimestre: "))
nota3 = float(input("Digite a nota do 3º bimestre: "))
nota4 = float(input("Digite a nota do 4º bimestre: "))

media = (nota1 + nota2 + nota3 + nota4) / 4
print(f"A média final do aluno é: {media}")
if(media>=7):
    print("Aprovado!")
elif(media>=5 and media<7):
    print("Recuperação!")
else:
    print("Reprovado!")
