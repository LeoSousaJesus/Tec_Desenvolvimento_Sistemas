/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.interfaces;

/**
 *
 * @author ead
 */
public class Barco implements Transporte{
    
    @Override
    public void mover(){
        System.out.println("o barco esta navegando no mar");
    }
}
