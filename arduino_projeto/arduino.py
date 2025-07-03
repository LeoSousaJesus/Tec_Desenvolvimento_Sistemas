from pyfirmata import Arduino
import time


arduino = Arduino('COM8')

ledverde = arduino.digital[7]
ledvermelho = arduino.digital[5]
ledamarelo = arduino.digital[3]
time.sleep(1)


while True:
    
    
    print("Pra ligar\n7 - Verde\n5 - vermelho\n3 - amarelo\n")    
    print("Pra desligar\n14 - Verde\n10 - vermelho\n6 - amarelo\n")    
    escolha = int(input("Informe o led que deseja ligar: "))
    
    match escolha:
        case 7:
            ledverde.write(1)
        case 5:
            ledvermelho.write(1)
        case 3:
            ledamarelo.write(1)
        case 14:
            ledverde.write(0)
        case 10:
            ledvermelho.write(0)
        case 6:
            ledamarelo.write(0)
        case _:
            print("Error esolha uma opção valida")
    
    print("Deseja sair do programa ?\n1 - continuar\n2 - sair")
    sair_continuar = int(input(">> "))
    
    if sair_continuar != 1: 
        print("Terminado") 
        break
         




# while True:
    
#     #ligar, esperar 2 segundos
#     ledverde.write(escolha)
#     time.sleep(2)
    
#     #desligar, esperar 2 segundos
#     ledverde.write(0)
#     time.sleep(2)
    
#     ledvermelho.write(1)
#     time.sleep(2)
    
#     ledvermelho.write(0)
#     time.sleep(2)
    
#     ledamarelo.write(1)
#     time.sleep(2)
    
#     ledamarelo.write(0)
#     time.sleep(2)
    