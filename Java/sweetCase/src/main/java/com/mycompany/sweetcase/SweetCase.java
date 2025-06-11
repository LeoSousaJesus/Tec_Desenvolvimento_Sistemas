package com.mycompany.sweetcase;

import java.util.Scanner;
import javax.swing.JOptionPane;

public class SweetCase {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        
      
        int escolha;
            
        System.out.println(">>> Escolha uma das opcoes <<<");
        System.out.println("[1] - Par ou impar");
        System.out.println("[2] - Bhaskara");
        System.out.print("[3] - Maior idade\n>> ");
        escolha = input.nextInt();
      
         if (escolha <= 3){ 
                switch (escolha) {
                    case 1:
                
                        int numero;
                
                        System.out.println(">>> Vamos descobrir se um numero e par ou impar <<<");
                        System.out.println("Digite um numero");
                        numero = input.nextInt();
                
                        if(numero % 2 == 0){
                            System.out.printf("Numero Par >>> " + numero);
                            }else{
                                System.out.printf("Numero Impar >>> " + numero);
                            }
                        
                        String mensagemTela = String.format("O numero >> %i", numero); 
                        
                        JOptionPane.showMessageDialog(null, mensagemTela , "Programa impar ou par", JOptionPane.INFORMATION_MESSAGE);
                        
                    break;
                    
                    case 2:
                        double delta, x1, x2, a, b, c;
        
                        System.out.println(" >>> Calculo da formula de Bhaskara <<<< ");
                        System.out.print("Digite o valor de A >>> ");
                        a  = input.nextDouble();
                        System.out.print("Digite o valor de B >>> ");
                        b = input.nextDouble();
                        System.out.print("Digite o valor de C >>>");
                        c = input.nextDouble();
            
                        delta = Math.pow(b,2)+(- 4*(a*c));
        
                        if(delta >= 0){
        
                            System.out.println("O valor de delta e >>> " + delta);
        
                            x1 = ((-(b) + Math.sqrt(delta)) / 2 * a);
                            x2 = ((-(b) - Math.sqrt(delta)) / 2 * a);
        
                            System.out.println("O valor de X1 e >>> " + x1);
                            System.out.println("Valor de X2 e >>> " + x2);
                            System.out.format("o delta: %.2f \n x1 : %.2f \n x2 %.2f :", delta, x1, x2);
                        }else{
                            System.out.println("A Raiz nao existe:" + delta);
                            }
                    break;
                    
                    case 3:
                        int maiorIdade;
                    
                        System.out.println(">>> Descobrindo a sua maioridade <<<");
                        System.out.println(">>> Digite sua idade <<<");
                        maiorIdade = input.nextInt();
                    
                        if (maiorIdade >= 18) {
                            System.out.println("Maior de idade");
                                if (maiorIdade > 70) {
                                    System.out.println("nao precisa votar");
                            }
                        }else{
                            System.out.println("Menor de idade, nao obrigado a votar");
                        }
                    break;
                    
                default:
                throw new AssertionError();
            }
        }else{
            JOptionPane.showMessageDialog(null, "Invalid input error", "Error", JOptionPane.ERROR_MESSAGE);
         }
    }
}
