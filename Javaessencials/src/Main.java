import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        System.out.println("\n" +
                "╱╱╭╮╱╱╱╱╱╱╱╱╱╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮\n" +
                "╱╱┃┃╱╱╱╱╱╱╱╱╱┃╭━━╯╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃\n" +
                "╱╱┃┣━━┳╮╭┳━━╮┃╰━━┳━━┳━━┳━━┳━╮╭━━┳┳━━┫┃╭━━╮\n" +
                "╭╮┃┃╭╮┃╰╯┃╭╮┃┃╭━━┫━━┫━━┫┃━┫╭╮┫╭━╋┫╭╮┃┃┃━━┫\n" +
                "┃╰╯┃╭╮┣╮╭┫╭╮┃┃╰━━╋━━┣━━┃┃━┫┃┃┃╰━┫┃╭╮┃╰╋━━┃\n" +
                "╰━━┻╯╰╯╰╯╰╯╰╯╰━━━┻━━┻━━┻━━┻╯╰┻━━┻┻╯╰┻━┻━━╯");
        System.out.println("\n" +
                "█▀▀ █▀ █▀▀ █▀█ █░░ █░█ ▄▀█   █░█ █▀▄▀█ ▄▀█   █▀█ █▀█ █▀▀ ▄▀█ █▀█   █▀▄ █▀▀   ▄█   ▄▀█   ▀▀█\n" +
                "██▄ ▄█ █▄▄ █▄█ █▄▄ █▀█ █▀█   █▄█ █░▀░█ █▀█   █▄█ █▀▀ █▄▄ █▀█ █▄█   █▄▀ ██▄   ░█   █▀█   ░░█");

        System.out.println("\n\n ");
        System.out.println(
                "▀██▀─▄███▄─▀██─██▀██▀▀█\n" +
                "─██─███─███─██─██─██▄█\n" +
                "─██─▀██▄██▀─▀█▄█▀─██▀█\n" +
                "▄██▄▄█▀▀▀─────▀──▄██▄▄█\n");

        int op = leia.nextInt(); // primitiva ou Wrappers (Integer)

        System.out.println("Qual nível você se considera em Java? (1 a 3)");
        Integer nivel = leia.nextInt();

        if(nivel.equals(1)){
            System.out.println("seu nível: "+nivel+" é igual a básico");
        }else if(nivel.equals(2)){
            System.out.println("seu nível: "+nivel+" é igual a intermediário");
        }else{
            System.out.println("seu nível: "+nivel+" é igual a intermediário");
        }
            switch(op){
                case 1 -> {
                    System.out.println("Situação de Aprendizagem 01");
                    SituacaoAprendizagem01  sa1 = new SituacaoAprendizagem01(10,10);
                    System.out.println("a soma é:"+sa1.somar());
                    System.out.println("a subtração é:"+sa1.subtrair());
                    System.out.println("a multiplicação é:"+sa1.multiplicar());
                    System.out.println("a divisão é:"+sa1.dividir());
                }

                case 2 -> System.out.println("Situação de Aprendizagem 02");
                case 3 -> System.out.println("Situação de Aprendizagem 03");
                case 4 -> System.out.println("Situação de Aprendizagem 04");
                case 5 -> System.out.println("Situação de Aprendizagem 05");
                case 6 -> System.out.println("Situação de Aprendizagem 06");
                case 7 -> System.out.println("Situação de Aprendizagem 07");
                default -> System.out.println("Opção Inválida!");
            }
        }
    }