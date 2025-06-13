public class Teste_Piramide {
    public static void main(String[] args) {
    int linhas = 5; // Define o número de linhas da pirâmide

    for (int i = 1; i <= linhas; i++) { // Laço para cada linha da pirâmide (1 a 5)
        
        // Imprime os espaços em branco à esquerda
        for (int j = linhas; j > i; j--) {
            System.out.print(" ");
        }

        // Imprime a primeira parte dos asteriscos da pirâmide
        for (int k = 1; k <= i; k++) {
            System.out.print("*");
        }

        // Imprime um espaço no meio entre as duas partes da pirâmide
        System.out.print(" ");

        // Imprime a segunda parte dos asteriscos (mesma quantidade da primeira)
        for (int k = 1; k <= i; k++) {
            System.out.print("*");
        }

        // Muda para a próxima linha
        System.out.println();





    }
}




    }
