import java.util.Scanner;

public class CalcularImpostoINSS {
    
    public static double calcularImpostoINSS(double salario) {
        double imposto = 0.0;
        
        // Verifica as faixas salariais e calcula o imposto conforme a tabela
        if (salario <= 1518.00) {
            // Até R$ 1.518,00, taxa de 7,5%
            imposto = 0.075 * salario;
        } else if (salario <= 2793.88) {
            // De R$ 1.518,01 até R$ 2.793,88, taxa de 9%
            imposto = 0.09 * salario;  // Imposto para a faixa anterior é 0
        } else if (salario <= 4190.83) {
            // De R$ 2.793,89 até R$ 4.190,83, taxa de 12%
            imposto = 0.12 * salario ;
        } else if (salario <= 8157.41) {
            // De R$ 4.190,84 até R$ 8.157,41, taxa de 14%
            imposto = 0.14 * salario;
        } else {
            // Para salários acima de R$ 8.157,41, o imposto é fixo na última faixa
            imposto = 0.14 * salario;
        }
        
        return imposto;

    }

}
