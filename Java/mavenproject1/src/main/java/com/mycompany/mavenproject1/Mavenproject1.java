package com.mycompany.mavenproject1;

import java.util.Scanner;

public class Mavenproject1 {

    public static void main(String[] args) {
        double delta, x1, x2, a, b, c;
        
        System.out.println(" >>> Calculo da formula de Bhaskara <<<< ");
        System.out.print("Digite o valor de A >>> ");
        Scanner input = new Scanner(System.in);
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
        }else{
            System.out.println("A Raiz nao existe:" + delta);
        }
    }
}
