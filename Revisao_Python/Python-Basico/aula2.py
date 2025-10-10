nasc = int(input("Que ano tu nasceu? "))
atual = int(input("Em qual ano estamos atualmente? "))
idade = atual-nasc

if(idade<25):
    print("Você está com ", idade ," ainda tem chance ☺")
elif(idade<38):
    print("Tu tens ", idade ," já ta ficando sem chances 😘")
else:
    print("Já era, acabou, não tem mais jeito 😔 com {} anos".format(idade))