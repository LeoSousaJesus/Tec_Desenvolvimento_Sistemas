public class Cliente {
    private String nome;
    private String email;
    private String telefone;
    private double salarioBruto;

    public Cliente(String nome, String email, String telefone, double salarioBruto) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.salarioBruto = salarioBruto;
    }

    public Cliente() {
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
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public double getSalarioBruto() {
        return salarioBruto;
    }

    public void setSalarioBruto(double salarioBruto) {
        this.salarioBruto = salarioBruto;
    }
    @Override
    public String toString() {
        return """
                
        ================================
            DADOS DE FUNCIONÁRIO
        ================================
           Nome = %s
           Email = %s
           Telefone = %s
           Salário = R$ %,.2f
           ================================
           """.formatted(
                    this.getNome(),
                    this.getEmail(),
                    this.getTelefone(),
                    this.getSalarioBruto()
        );
    }
}
