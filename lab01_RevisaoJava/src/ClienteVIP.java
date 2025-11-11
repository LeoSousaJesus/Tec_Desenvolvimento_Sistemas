import java.util.Scanner;

public class ClienteVIP {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria o leitor de entrada

        System.out.print("O cliente é VIP? (sim/não): ");
        String resposta = scanner.nextLine(); // Lê a resposta do usuário

        boolean ehVip = false; // Variável booleana para armazenar o resultado

        // Verifica se a resposta foi "sim" (ignorando maiúsculas/minúsculas)
        if (resposta.equalsIgnoreCase("sim")) {
            ehVip = true;
        }

        // Exemplo de uso da variável
        if (ehVip) {
            System.out.println("O cliente é VIP! 😎");
        } else {
            System.out.println("O cliente não é VIP.");
        }

        scanner.close(); // Fecha o scanner (boa prática)
    }
}

