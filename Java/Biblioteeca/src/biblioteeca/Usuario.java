package biblioteeca;

public class Usuario {
    private int id_usuario;
    private String nome;
    private String email;
    private String Telefone;
    private String tipo_usuario;
    
    // Constructor

    public Usuario(int id_usuario, String nome, String email, String Telefone, String tipo_usuario) {
        this.id_usuario = id_usuario;
        this.nome = nome;
        this.email = email;
        this.Telefone = Telefone;
        this.tipo_usuario = tipo_usuario;
    }

    Usuario() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    // Getter and Setter

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String Telefone) {
        this.Telefone = Telefone;
    }

    public String getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(String tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }
    
    
}
