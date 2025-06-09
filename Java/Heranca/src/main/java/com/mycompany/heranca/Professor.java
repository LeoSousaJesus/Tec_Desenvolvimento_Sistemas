package com.mycompany.heranca;

import java.util.Scanner;

public class Professor extends Pessoa{
    private String especialidade;
    private Double salario;
    Scanner input = new Scanner(System.in);
    
    // Constructor

    public Professor(String especialidade, Double salario, String nome, String sexo, int idade) {
        super(nome, sexo, idade);
        this.especialidade = especialidade;
        this.salario = salario;
    }
    
    // Getter and Setter

    public String getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }
    
    // Metodos
    
    public void receberAumento(){
        System.out.print("Receber aumento\n>> ");
        double lerAumento = input.nextDouble();
        salario = salario += lerAumento;
        System.out.print("Aumento recebido de : " + lerAumento + "\nNovo Salario : " + salario + "\n\n");
    }

    @Override
    public void fazerAniv() {
        System.out.println(getNome() + " está fazendo aniversário!");
        setIdade(getIdade() + 1);
        System.out.println(getNome() + " agora tem " + getIdade() + " anos.");
    }

	@Override
	public String toString() {
		return super.toString() + especialidade + ", salario=" + salario + ", input=" + input + "]";
	}
    
    
}
