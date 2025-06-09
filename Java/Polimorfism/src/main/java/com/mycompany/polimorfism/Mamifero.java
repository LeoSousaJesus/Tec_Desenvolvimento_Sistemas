package com.mycompany.polimorfism;

abstract class Mamifero {
    String nome, especie;
    
    public abstract void emitirSom();
    
    public void falarFrase(String frase){
        System.out.println("O animal  diz " + frase);
    }
    
    public void horarioDia(String dia){
        System.out.println("O dia estar " + dia);
    }
    
    public void dono(String dono){
        System.out.println("e dono " + dono);
    }
    
    public void idadePeso(String idadepeso){
        if(null != idadepeso)switch (idadepeso) {
            case "novo e leve":
                System.out.println("Abanar");
                break;
            case "novo e pessado":
                System.out.println("latir");
                break;
            case "velho e leve":
                System.out.println("latir");
                break;
            case "velho e pessado":
                System.out.println("ignorar");
                break;
            default:
                break;
        }
    }
}
