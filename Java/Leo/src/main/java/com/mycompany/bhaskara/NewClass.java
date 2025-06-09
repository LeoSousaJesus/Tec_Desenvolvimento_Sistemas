/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.felipe;

import javax.management.Query;

/**
 *
 * @author ead
 */
public class NewClass {
    public double a,b,c;

//    public NewClass(double a, double b, double c) {
//        this.a = a;
//        this.b = b;
//        this.c = c;
//    }

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
    }
    
    public double Delta(){
        return (Math.pow(b, 2)+(-4*(a*c)));
    }
    
    public void CalcularRaiz(){
        double delta = Delta();
        
        if (delta>0){
            double x1 = ((-(b)+ Math.sqrt(delta)) / 2 * a);
            double x2 = ((-(b) - Math.sqrt(delta)) / 2 * a);
        
            // System.out.format("O valor de X1 e >>> %.2f \n" , x1);
            // System.out.format("Valor de X2 e >>> %.2f \n" , x2);
            System.out.format("delta >> %.2f \n x1 >> %.2f \n x2 >> %.2f ", delta, x1, x2);
        }else{
            
            System.out.println("A Raiz nao existe:" + delta);
        }
    }
}
