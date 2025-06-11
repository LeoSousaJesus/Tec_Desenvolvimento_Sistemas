package concessionaria;

public class Carro {
    private int id_carro;
    private String marca;
    private int ano;
    private String tipo;
    private String portas;
    
    // construtor

    public Carro(String marca, int ano, String tipo, String portas) {
        this.marca = marca;
        this.ano = ano;
        this.tipo = tipo;
        this.portas = portas;
    }
    
    // getter and setter

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getPortas() {
        return portas;
    }

    public void setPortas(String portas) {
        this.portas = portas;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getId_carro() {
        return id_carro;
    }

    public void setId_carro(int id_carro) {
        this.id_carro = id_carro;
    }
    
    
    
    
}
