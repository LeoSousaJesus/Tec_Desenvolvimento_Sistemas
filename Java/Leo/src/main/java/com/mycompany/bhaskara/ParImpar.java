package com.mycompany.felipe;

public class ParImpar {
    public int n1;

    public int getN1() {
        return n1;
    }

    public void setN1(int n1) {
        this.n1 = n1;
    }
    
    public void verificarImparPar(){
        
        if (n1 %2 == 0){
            System.out.println("Numero par >> " + n1);
        }else{
            System.out.println("Numero impar >> " + n1);
        }
    }
}
