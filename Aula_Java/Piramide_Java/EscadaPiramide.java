public class EscadaPiramide {
    public static void main(String[] args) {
        int linhas = 5; // Define o número de linhas para a metade superior da pirâmide (e indiretamente para a inferior)

        // --- Parte Superior da Pirâmide (Crescente) ---
        for (int i = 1; i <= linhas; i++) { // Laço para cada linha da parte superior
            // Imprime os espaços em branco à esquerda
            for (int j = linhas; j > i; j--) {
                System.out.print(" ");
            }

            // Imprime a primeira parte dos asteriscos
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }

            // Imprime um espaço no meio
            System.out.print(" ");

            // Imprime a segunda parte dos asteriscos
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }

            // Muda para a próxima linha
            System.out.println();
        }

        // --- Parte Inferior da Pirâmide (Decrescente) ---
        // Começamos de 'linhas - 1' para evitar repetir a linha do meio (a mais larga)
        for (int i = linhas - 1; i >= 1; i--) { // Laço para cada linha da parte inferior
            // Imprime os espaços em branco à esquerda (aumentam à medida que as linhas diminuem)
            for (int j = linhas; j > i; j--) {
                System.out.print(" ");
            }

            // Imprime a primeira parte dos asteriscos
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }

            // Imprime um espaço no meio
            System.out.print(" ");

            // Imprime a segunda parte dos asteriscos
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }

            // Muda para a próxima linha
            System.out.println();
        }
    }
}
