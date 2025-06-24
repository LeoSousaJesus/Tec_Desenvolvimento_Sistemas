public class ProgramaCalculadora {
    public static void main(String[] args) {
        java.util.Scanner tec = new java.util.Scanner(System.in);
        
        System.out.println("Digite o primeiro número: ");
        double num1 = tec.nextDouble();
        
        System.out.println("Digite o segundo número: ");
        double num2 = tec.nextDouble();
        
        System.out.println("Escolha a operação: +, -, *, /");
        char operacao = tec.next().charAt(0);
        
        double resultado;
        
        switch (operacao) {
            case '+':
                resultado = num1 + num2;
                break;
            case '-':
                resultado = num1 - num2;
                break;
            case '*':
                resultado = num1 * num2;
                break;
            case '/':
                if (num2 != 0) {
                    resultado = num1 / num2;
                } else {
                    System.out.println("Erro: Divisão por zero.");
                    tec.close();
                    return;
                }
                break;
            default:
                System.out.println("Operação inválida.");
                tec.close();
                return;
        }
        
        System.out.printf("O resultado de %.2f %c %.2f é %.2f%n", num1, operacao, num2, resultado);
        
        tec.close();
    }
}
