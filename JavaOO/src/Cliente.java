public abstract class Cliente {

    //Ela possui métodos concretos e métodos abstratos
    // Ela esta no alto nível da abstração
    //Nao pode ser instanciada.
    //get set contrutor..
    private String nome;
    private String email;
    private String fone;
    public static int contObj=0; //static (da classe)
    //no-static (do objeto)

    public Cliente(){
        contObj++;
    }
    public Cliente(String nome,
                   String email,
                   String fone) {
        this.nome = nome;
        this.email = email;
        this.fone = fone;
        contObj++;

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

    public String getFone() {
        return fone;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    @Override
    public String toString() {
        return """
=================================
  DADOS DO FUNCIONÁRIO
=================================
 Nome:      %s
 E-mail:    %s
 Telefone:  %s
 Salário:   R$ %,.2f
=================================
""".formatted(
                this.getNome(),
                this.getEmail(),
                this.getFone()

        );
    }
    //assinatura ,um contrato.
    public abstract boolean obterIdentificacaoPrincipal();
}