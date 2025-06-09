package com.mycompany.repeticoes;


public class bhasProcedures {
    static void bhaskara(double a, double b, double c){
        double x1, x2, delta;
        
        delta = Math.pow(b, 2) + (- 4 * (a * c));
        
        if(delta >= 0){
        
            // System.out.format("O valor de delta e >>> %.2f\n" , delta);
        
            x1 = ((-(b) + Math.sqrt(delta)) / 2 * a);
            x2 = ((-(b) - Math.sqrt(delta)) / 2 * a);
        
            // System.out.format("O valor de X1 e >>> %.2f \n" , x1);
            // System.out.format("Valor de X2 e >>> %.2f \n" , x2);
            System.out.format("delta >> %.2f \n x1 >> %.2f \n x2 >> %.2f ", delta, x1, x2);
           }else{
                System.out.println("A Raiz nao existe:" + delta);
        }
    }
    public static void main(String[] args){
        bhaskara(1, 5, -15);
    }
}
