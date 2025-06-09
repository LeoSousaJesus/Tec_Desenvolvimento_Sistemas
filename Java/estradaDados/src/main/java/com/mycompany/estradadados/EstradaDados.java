package com.mycompany.estradadados;

import java.util.Scanner;


public class EstradaDados {
    
    public static void main(String[] args) {
        double n1, n2, media;
        
        Scanner input = new Scanner(System.in);
        
        System.out.println(">>> Calculo nota media <<<");
        System.out.println("Digite a sua nota >>> ");
        n1 = input.nextDouble();
        System.out.println("Digite a segunda nota >>> ");
        n2 = input.nextDouble();
        
       media = (n1 + n2) / 2;
       
        System.out.println("Sua nota media e >>> " + media);
    }
}
