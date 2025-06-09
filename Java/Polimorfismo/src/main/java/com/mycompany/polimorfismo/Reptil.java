
package com.mycompany.polimorfismo;

public class Reptil extends Animal{
    private String CorEscama;

    public Reptil(String CorEscama, double peso, int idade, String membro) {
      
        this.CorEscama = CorEscama;
    }


    public String getCorEscama() {
        return CorEscama;
    }

    public void setCorEscama(String CorEscama) {
        this.CorEscama = CorEscama;
    }

    @Override
    public void emitirSom() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String toString() {
        return "Reptil{" + "CorEscama=" + CorEscama + '}';
    }
    
    
}
