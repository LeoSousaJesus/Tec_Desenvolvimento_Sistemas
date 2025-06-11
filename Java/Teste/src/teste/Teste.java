package teste;

import java.util.Scanner;

public class Teste {

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        int opcao = 0;
        
        while (opcao != 4) {   
            
            System.out.print("Banco de dados\nEscolha uma opcao\n[1] Inserir\n[2] Atualizar\n[3] Deletar\n[4] Exit\n>> ");
            opcao = input.nextInt();
            input.nextLine();
            
            switch (opcao) {
                case 1:
                    System.out.println("case1");
                    System.out.println("fiadgfoiuebvguorwgfbtrwgbv");
                    
                    break;
                default:
                    throw new AssertionError();
            }
            
            System.out.print("Banco de dados\nEscolha uma opcao\n[1] Inserir\n[2] Atualizar\n[3] Deletar\n[4] Exit\n>> ");
            opcao = input.nextInt();
            System.out.println(opcao);
        }
        
        System.out.println("Banco Finalizado");
    }
    
}
