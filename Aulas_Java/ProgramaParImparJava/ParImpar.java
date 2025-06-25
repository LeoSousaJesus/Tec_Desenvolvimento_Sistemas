// Programa para verificar se um número é par ou ímpar em Java


public class ParImpar {
    public static void main(String[] args) {
        java.util.Scanner tec = new java.util.Scanner(System.in);
        
        System.out.println("Digite um numero para saber se ele e impar ou par: ");
        int escolha = tec.nextInt();
        
        // Verifica se o número é par ou ímpar
        if (escolha % 2 == 0) {
            System.out.println("O número " + escolha + " é par.");
        } else {
            System.out.println("O número " + escolha + " é ímpar.");
        }
        
        tec.close();
    }
}
