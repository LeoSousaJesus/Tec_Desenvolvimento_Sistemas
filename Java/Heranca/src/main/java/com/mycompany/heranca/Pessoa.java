package com.mycompany.heranca;

abstract class Pessoa {
    private String nome, sexo;
    private int idade;
    
    // Constructor
    
    public Pessoa(String nome, String sexo, int idade) {
        this.nome = nome;
        this.sexo = sexo;
        this.idade = idade;
    }

    // Metodos
    
    public abstract void fazerAniv();

    // Getter and Setter
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getIdade() {
        return idade;
    }
    
    public void setIdade(int idade) {
        this.idade = idade;
    }
    
    // to Strings

    @Override
    public String toString() {
        return super.toString() + "nome=" + nome + ", sexo=" + sexo + ", idade=" + idade + '}';
    }
    

}
