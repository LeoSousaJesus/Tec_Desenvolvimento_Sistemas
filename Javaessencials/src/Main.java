import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        System.out.println("\n" +
                "░░█ ▄▀█ █░█ ▄▀█   █▀▀ █▀ █▀ █▀▀ █▄░█ ▀█▀ █ ▄▀█ █░░ █▀   █\n" +
                "█▄█ █▀█ ▀▄▀ █▀█   ██▄ ▄█ ▄█ ██▄ █░▀█ ░█░ █ █▀█ █▄▄ ▄█   █");


        int confirm;

        do {
            System.out.println("\uD835\uDE4C\uD835\uDE6A\uD835\uDE56\uD835\uDE61 \uD835\uDE4E\uD835\uDE3C \uD835\uDE6B\uD835\uDE64\uD835\uDE58\uD835\uDE5Â \uD835\uDE65\uD835\uDE67\uD835\uDE5A\uD835\uDE5B\uD835\uDE5A\uD835\uDE67\uD835\uDE5A❓");
            int op = leia.nextInt(); // primitiva ou Wrappers (Integer)
            System.out.println("Qual nível você se considera em Java (1 ao 3)");
            Integer nivel = leia.nextInt();
            if (nivel.equals(1)) {
                System.out.println("seu nível: " + nivel + " é igual a básico");
            } else if (nivel.equals(2)) {
                System.out.println("seu nível: " + nivel + " é igual a intermediário");
            } else {
                System.out.println("seu nível: " + nivel + " é igual a intermediário");
            }
            switch (op) {
                case 1 -> {
                    System.out.println("Situação de Aprendizagem 01");
                    SituacaoAprendizagem01 sa1 = new SituacaoAprendizagem01(10, 10);
                    System.out.println("a soma é:" + sa1.somar());
                    System.out.println("a subtração é:" + sa1.subtrair());
                    System.out.println("a multiplicação é:" + sa1.multiplicar());
                    System.out.println("a divisão é:" + sa1.dividir());
                    System.out.println("a resto é:" + sa1.resto());
                }


                case 2 -> {
                    System.out.println("Situação de Aprendizagem 02");
                    SituacaoAprendizagem02 sa02 = new SituacaoAprendizagem02();
                    sa02.setNomeCanal("Pipoca e Nanquim");
                    sa02.setDescricao("Vídeos incríveis sobre cinema e história em quadrinhos");
                    sa02.setUrl("teste.com.br");
                    sa02.setQtdeInscritos(30000);
                    sa02.setConheceCanal(false);
                    sa02.setQtdeVisualizacao(6000);
                    sa02.setTemShorts(true);
                    sa02.setQtdeHoras(1000);
                    System.out.println("Situação Financeira do Canal:" + sa02.verificaInscritos()
                    );
                }
                case 3 -> {
                    System.out.println("Situação de Aprendizagem 03");
                    SituacaoAprendizagem03 sa3 = new SituacaoAprendizagem03();
                    sa3.setNomeClasse("Cliente");
                    System.out.println(sa3.verificaPadraoClasse());
                }
                case 4 -> {
                    System.out.println("Situação de Aprendizagem 04");
                    SituacaoAprendizagem04 sa4 = new SituacaoAprendizagem04();
                    System.out.println(sa4.verificaPar(10));
                    System.out.println(sa4.verificaVip(false, "premium"));
                }
                case 5 -> {
                    System.out.println("Situação de Aprendizagem 05");
                    System.out.println("""
                                while
                                do while
                                for
                                Laço finito
                                Laço infinito
                                Controlado por sentinela
                                Operador lógico - revisão tabela verdade
                                Projeto Final - Java Essentials     
                            """);
                    SituacaoAprendizagem05 sa5 = new SituacaoAprendizagem05();
                    sa5.demonstrarWhile();
                    System.out.println("*************************************************");
                    sa5.demonstrarFor();
                    sa5.demonstrarCollection();
                }
                case 6 -> System.out.println("Situação de Aprendizagem 06");
                case 7 -> System.out.println("Situação de Aprendizagem 07");
                default -> System.out.println("Opção Inválida!");
            }
            System.out.println("Deseja Rodar novamente? (1 = SIM) / (0 = NÃO)");
            confirm = leia.nextInt();
        }while (confirm == 1);
        System.out.println("Saindo...");
    }
}