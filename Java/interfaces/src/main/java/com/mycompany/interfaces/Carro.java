
package com.mycompany.interfaces;

/**
 *
 * @author ead
 */
public class Carro implements Transporte{
    
    @Override
    public void mover(){
        System.out.println("O carro esta andando pela estrada");
    }
}
