package com.mycompany.sobrecarga;

import java.io.PrintStream;

public class Calculo {
    public String assinatura(int n1){
        String numero;
        
        if(n1 % 2 == 0){
            numero = "Par";
        }else{
            numero = "impar";
        }
        return numero;
    }
    
    public int assinatura(int n1, int n2){
        int soma;
        
        soma = n1 + n2;
        
        return soma;
    }
    
    public String assinatura(double a, double b, double c){
        double x1 = 0, x2 = 0, delta;
        
        delta = Math.pow(b, 2) + (- 4 * (a * c));
        
            if(delta >= 0){
        
            // System.out.format("O valor de delta e >>> %.2f\n" , delta);
        
            x1 = ((-(b) + Math.sqrt(delta)) / 2 * a);
            x2 = ((-(b) - Math.sqrt(delta)) / 2 * a);
        
            // System.out.format("O valor de X1 e >>> %.2f \n" , x1);
            // System.out.format("Valor de X2 e >>> %.2f \n" , x2);
            //System.out.format("delta >> %.2f \n x1 >> %.2f \n x2 >> %.2f ", delta, x1, x2);
           }else{
                System.out.println("A Raiz nao existe:" + delta);
        }
                return String.format("Delta : %.2f \nx1 : %.2f\nx2 : %.2f", delta , x1 , x2);
    }
    
    public String assinatura(int n1, int n2, int n3, int n4){
        int media;
        
        media = (n1 + n2 + n3 + n4) / 4;
         return "Media >> " + media;
    }     
}
