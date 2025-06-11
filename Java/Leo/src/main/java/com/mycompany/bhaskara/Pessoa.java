package com.mycompany.felipe;

import java.time.LocalDate;
import java.time.Period;

public class Pessoa {
    private String nome,cpf;
    private LocalDate dt_nascimento;
    private double altura, peso;

    public Pessoa(String nome, String cpf, LocalDate dt_nascimento, double altura, double peso) {
        this.nome = nome;
        this.cpf = cpf;
        this.dt_nascimento = dt_nascimento;
        this.altura = altura;
        this.peso = peso;
    }

    
    
    public String getNome() {
        return nome;
    }
    
    // Salvar
    public String toCSV(){
        return this.getNome() + ';' + this.getDt_nascimento() + ";" + this.getAltura() + ";" + this.getPeso() + ";" +
                String.format("%.2f", imc())
                + ";" + (isMaiorIdade()? "sim" : "nao");
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public LocalDate getDt_nascimento() {
        return dt_nascimento;
    }

    public void setDt_nascimento(LocalDate dt_nascimento) {
        this.dt_nascimento = dt_nascimento;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    // IMC
    
    public double imc(){
        double calculo;

        calculo = (Math.pow(getAltura(), 2)) / getPeso();
        
        if(calculo > 0){
        if(calculo > 19.1){
            System.out.println("Voce esta abaixo do peso >> " + calculo);
        }else if (calculo >= 19.1 && calculo <= 25.8){
            System.out.println("Voce esta no peso ideal >> " + calculo);
        }else if (calculo >= 25.9 && calculo <= 27.3 ){
            System.out.println("Voce esta pouco acima do peso >> " + calculo);
        }else if (calculo >= 27.4 && calculo <= 32.3){
            System.out.println("voce esta acima do peso >> " + calculo);
        }else{
            System.err.println("voce esta na obesidade >> " + calculo);
        }
      }
        return calculo;
    }
   
   // Maior idade
    
    public boolean isMaiorIdade(){
        LocalDate hoje = LocalDate.now();
        Period idade = Period.between(this.getDt_nascimento(), hoje);
        return idade.getYears() >= 18;
    }
}
