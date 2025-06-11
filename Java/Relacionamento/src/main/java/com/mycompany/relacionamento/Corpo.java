package com.mycompany.relacionamento;

public class Corpo {
    Coracao coracao = new Coracao(); // Composição
    
    void viver(){
        coracao.bater();
    }
}
