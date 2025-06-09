/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadrastro;

/**
 *
 * @author ead
 */
abstract class Pessoa {
    private String nome;
    private String endereco;
    private String sexo;
    private String cpf;
    
    // CONSTRUTOR

    public Pessoa(String nome, String endereco, String sexo, String cpf) {
        this.nome = nome;
        this.endereco = endereco;
        this.sexo = sexo;
        this.cpf = cpf;
    }
    
    public Pessoa(){
    
    }
    
    // GETTER AND SETTER

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    
}
