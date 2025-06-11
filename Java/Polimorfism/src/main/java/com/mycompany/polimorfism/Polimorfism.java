package com.mycompany.polimorfism;

public class Polimorfism {

    public static void main(String[] args) {
        Mamifero mamifero = new Mamifero() {
            @Override
            public void emitirSom() {
                throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
            }
        };
 
        
        mamifero.falarFrase("abanar e latir");
        
        mamifero.idadePeso("novo e leve");
        
        
       
    }
}
