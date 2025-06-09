package com.mycompany.heranca;

import java.util.Scanner;

public class Funcionario extends Pessoa{
    private String setor, trabalhando;
    Scanner input = new Scanner(System.in);
    
    // Constructor

    public Funcionario(String setor, String trabalhando, String nome, String sexo, int idade) {
        super(nome, sexo, idade);
        this.setor = setor;
        this.trabalhando = trabalhando;
    }
    
    // Getter and Setter

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public String getTrabalhando() {
        return trabalhando;
    }

    public void setTrabalhando(String trabalhando) {
        this.trabalhando = trabalhando;
    }
    
    // Metodos
    
    public void mudarTrabalho(){
        System.out.println(" Mudar Setor\n>> ");
        String lerSetor = input.nextLine();
        setSetor(lerSetor);
        System.out.format("Setor mudado : %s", getSetor());
        
    }

    @Override
    public void fazerAniv() {
        System.out.println(getNome() + " está fazendo aniversário!");
        setIdade(getIdade() + 1);
        System.out.println(getNome() + " agora tem " + getIdade() + " anos.");
    }

	@Override
	public String toString() {
		return super.toString() + setor + ", trabalhando=" + trabalhando + ", input=" + input + "]";
	}
}


