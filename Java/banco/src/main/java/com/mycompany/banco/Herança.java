package com.mycompany.banco;

public class Herança {
    public class Animal{
        protected String nome;
        
        public void emitirSom(){
            System.out.println("O animal faz som ..");
        }
        
        public void setNome(String nome) {
            this.nome = nome;
        }
        
        public String getNome(){
            return nome;
        }
    }
}
