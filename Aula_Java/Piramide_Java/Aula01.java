class Aula01 {
    public static void main (String[] args) {
        Matematica mat1 = new Matematica();

        double delta = mat1.delta(1, 1, -12);

        mat1.resposta(delta, 1, -1, -12);
        System.out.println(x1);
        System.out.println(x2);

    }

    public static int soma(int a, int b) {
        return a + b;
    }

    public int soma(double a, double b) {
        return (int)(a + b);
    }
}

public class Aula01 {
    public static void main(String[] args) {
        Matematica mat1 = new Matematica();

        int d = mat1.soma(5.3,8.1);
        int c = mat1.soma(6,8);

            System.out.println(c + "," + d);
    }
}
