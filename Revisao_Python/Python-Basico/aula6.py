# Estrura de controle if, elif, else

num = float(input("Digite um número: "))
resto = num % 2
if(resto==0):
    print("O número {} é par".format(num))
else:
    print("O número {} é ímpar".format(num))
    
if(num>0):
    print("O número {} é positivo".format(num))
elif(num<0):
    print("O número {} é negativo".format(num))
else:
    print("O número é zero")
    