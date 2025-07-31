package br.com.jkalango.dto;
public class Genero {
    // Atributo que armazena o nome do gênero
    private String name;
    // Atributo que armazena a descrição do gênero
    private String descript;

    // Construtor da classe que recebe nome e descrição
    public Genero(String name, String descript) {
        this.descript = descript; // Inicializa a descrição
        this.name = name;         // Inicializa o nome
    }

    // Método para obter o nome do gênero
    public String getName(){
        return name;
    }

    // Método para obter a descrição do gênero
    public String getDescript(){
        return descript;
    }

    // Método para definir o nome do gênero
    public void setName(String name) {
        this.name = name;
    }

    // Método para definir a descrição do gênero
    public void setDescript(String descript) {
        this.descript = descript;

    }
}