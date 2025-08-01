package br.com.jkalango.dto;


// Classe Criador representa um criador de conteúdo com atributos como nome, email, telefone e perfil
public class Criador {
    // Atributos: nome, email, telefone, perfil

    private String nome;
    private String email;
    private String telefone;
    private String perfil;

    // Construtor da classe Criador
    public Criador(String nome, String email, String telefone, String perfil) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.perfil = perfil;
    }

    // Método para obter o nome do criador
    public String getNome() {
        return nome;
    }
    // Método para obter o email do criador
    public String getEmail() {
        return email;
    }
    // Método para obter o telefone do criador
    public String getTelefone() {
        return telefone;
    }
    // Método para obter o perfil do criador
    public String getPerfil() {
        return perfil;
    }

    // Método para definir o nome do criador
    public void setNome(String nome) {
        this.nome = nome;
    }
    // Método para definir o email do criador
    public void setEmail(String email) {
        this.email = email;
    }
    // Método para definir o telefone do criador
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    // Método para definir o perfil do criador
    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    }

