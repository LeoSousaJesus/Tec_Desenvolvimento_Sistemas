public class SituacaoAprendizagem01 {
    // Calculadora Avançada

    // Aritmética

    /*
    public static double somar(double a, double b) {
        return a + b;
    }
    
    public static double subtrair(double a, double b) {
        return a - b;
    }
    
    public static double multiplicar(double a, double b) {
        return a * b;
    }
    
    public static double dividir(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Divisor não pode ser zero");
        }
        return a / b;
    }
    
    // Relacional
    public static boolean numMaior(double a, double b) {
        return a > b;
    }
    
    public static boolean numMenor(double a, double b) {
        return a < b;
    }
    
    public static boolean numIgual(double a, double b) {
        return a == b;
    }
    
    // Lógico
    public static boolean numPositivo(double numero) {
        return numero > 0;
    }
    
    public static boolean numNegativo(double numero) {
        return numero < 0;
    }
    
    public static boolean numPar(int numero) {
        return numero % 2 == 0;
    }
    
    // Baskara
    public static double[] resolverBaskara(double a, double b, double c) {
        double delta = b * b - 4 * a * c;

        if (delta < 0) {
            return null; // Sem raízes reais
        }
        
        double x1 = (-b + Math.sqrt(delta)) / (2 * a);
        double x2 = (-b - Math.sqrt(delta)) / (2 * a);
        
        return new double[]{x1, x2};
    }
    
    // Estatística
    public static double calcularMedia(double[] numeros) {
        if (numeros.length == 0) return 0;
        double soma = 0;
        for (double num : numeros) {
            soma += num;
        }
        return soma / numeros.length;
    }
    
    public static double calcularMediana(double[] numeros) {
        if (numeros.length == 0) return 0;
        java.util.Arrays.sort(numeros);
        if (numeros.length % 2 == 0) {
            return (numeros[numeros.length / 2 - 1] + numeros[numeros.length / 2]) / 2;
        }
        return numeros[numeros.length / 2];
    }
    
    public static double calcularDesvioPadrao(double[] numeros) {
        double media = calcularMedia(numeros);
        double somaQuadrados = 0;
        for (double num : numeros) {
            somaQuadrados += Math.pow(num - media, 2);
        }
        return Math.sqrt(somaQuadrados / numeros.length);
    }
    
    // Matemática (operações)
    public static double potencia(double base, double expoente) {
        return Math.pow(base, expoente);
    }
    
    public static double raizQuadrada(double numero) {
        if (numero < 0) {
            throw new IllegalArgumentException("Não é possível calcular raiz quadrada de número negativo");
        }
        return Math.sqrt(numero);
    }
    
    public static int fatorial(int numero) {
        if (numero < 0) {
            throw new IllegalArgumentException("Fatorial não definido para números negativos");
        }
        if (numero == 0 || numero == 1) {
            return 1;
        }
        return numero * fatorial(numero - 1);
    }
    
    public static int maiorDivisorComum(int a, int b) {
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }*/

    //Matemática (operações)
    private int x;
    private int y;


    public SituacaoAprendizagem01(){
        // vazio - não precisa inicializar o objeto
    }
    public SituacaoAprendizagem01(int x, int y){
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    // Criar uma Mini Calculadora
    // Somar dois números
    // Subtrair dois números
    // Multiplicar dois números
    // Dividir dois números
    // retornar o resto da divisão de dois números
    // A classe vai ter que se comunicar com o programa principal (Main.java)
    // menu swith

    public int somar(){
        return this.x + this.y;
    }

    public int subtrair(){
        return this.x - this.y;
    }

    public int multiplicar(){
        return this.x * this.y;
    }

    public int dividir() {
        if (y == 0) {
            new IllegalArgumentException("Divisor não pode ser zero");
        }
        return this.x / this.y;
    }
}
