def calcular_porcentagem(numero, porcentagem):
    resultado = numero * (porcentagem / 100)
    return resultado

def main():
    print("Digite o número que deseja calcular a porcentagem: ", end="")
    numero_desejado = float(input())
    
    print("Digite a porcentagem: ", end="")
    porcentagem = float(input())
    
    porcentagem_calculada = calcular_porcentagem(numero_desejado, porcentagem)
    print(f"A porcentagem calculada foi: {porcentagem_calculada}")

if __name__ == "__main__":
    main()