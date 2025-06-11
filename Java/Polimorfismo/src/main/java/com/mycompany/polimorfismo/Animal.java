package com.mycompany.polimorfismo;

abstract class Animal {
    private double peso;
    private int idade;
    private String membro;
    
    public abstract void emitirSom();

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getMembro() {
        return membro;
    }

    public void setMembro(String membro) {
        this.membro = membro;
    }

    @Override
    public String toString() {
        return "Animal{" + "peso=" + peso + ", idade=" + idade + ", membro=" + membro + '}';
    }
}
