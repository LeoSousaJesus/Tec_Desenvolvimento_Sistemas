public class ClienteFisico extends Cliente implements ICalculoImposto {
    private double salarioBruto;
    private String cpf;

    public ClienteFisico() {
        super();
    }

    public ClienteFisico(String nome,
                         String email,
                         String fone,
                         double salarioBruto,
                         String cpf) {
        super(nome,email,fone);
        this.salarioBruto = salarioBruto;
        this.cpf = cpf;
    }

    public double getSalarioBruto() {
        return salarioBruto;
    }

    public void setSalarioBruto(double salarioBruto) {
        this.salarioBruto = salarioBruto;
    }

    //Polimorfismo
    @Override
    public boolean obterIdentificacaoPrincipal() {
        return false;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Override
    public double calcular() {

        return (this.salarioBruto - (this.salarioBruto)*ICalculoImposto.TAXA_IMPOSTO)-7000;
    }

    @Override
    public double retornarAPI() {
        return 0;
    }
}