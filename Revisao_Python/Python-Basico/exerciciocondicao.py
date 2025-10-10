# Faça um programa em que o recebe do usuario o placar de um jogo de futebol (os gols do time A e os gols do time B).
# Informe se o resultado foi empate, vitória do time A ou vitória do time B.

gols_time_a = int(input("Digite o número de gols do time A: "))
gols_time_b = int(input("Digite o número de gols do time B: "))

if(gols_time_a > gols_time_b):
    print("Vitória do time A")
elif(gols_time_b > gols_time_a):
    print("Vitória do time B")
else:
    print("Empate")
    





