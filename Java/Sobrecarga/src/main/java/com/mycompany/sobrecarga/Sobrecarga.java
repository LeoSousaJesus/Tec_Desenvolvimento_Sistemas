package com.mycompany.sobrecarga;

public class Sobrecarga {

    public static void main(String[] args) {
        Calculo calculos = new Calculo();
       
        // Par ou Impar
        System.out.println(calculos.assinatura(2));
        
        // Somas valores
        System.out.println(calculos.assinatura(58, 5));
        
        // Bhaskara
        System.out.println(calculos.assinatura(1, 5, -12));
        
        // Media
        System.out.println(calculos.assinatura(2, 7, 9, 10));
    }
}
