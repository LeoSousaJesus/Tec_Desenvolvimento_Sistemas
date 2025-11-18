public class ClienteFisico extends Cliente implements ICalculoImposto{
    private double salarioBruto;
    private String cpf;

    public ClienteFisico() {
    }

    public ClienteFisico(double salarioBruto, String cpf) {
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
        return 0;
    }

    @Override
    public double retornarAPI() {
        return 0;
    }
}