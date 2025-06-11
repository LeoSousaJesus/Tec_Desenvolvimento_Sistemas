package com.mycompany.animal;


public class Animal {
        protected String nome;
        
        public void emitirSom(){
            System.out.println("O animal faz som ..");
        }
        
        public String falarFrase(){
            // String agradavel = "abanar e latir";
            // String agressiva = "rosnar";
            return "Abanar e latir";
        }
        
        public String falaFrase(){
            String agressiva = "rosnar";
            return agressiva;
       }
        
        public void horarioDia(){
            
        }
        
        public void setNome(String nome) {
            this.nome = nome;
        }
        
        public String getNome(){
            return nome;
        }
}
