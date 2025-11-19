public class ClienteJuridico extends Cliente{
    private String cnpj;
    private String numIE;
    private double faturamentoAnual;
    //tantos milhões, tantos bilhões


    public ClienteJuridico() {
    }
    //Poli - muitas Morfismo - formas
    @Override
    public boolean obterIdentificacaoPrincipal() {
        return false;
    }

    public ClienteJuridico(String nome,String email, String fone,String cnpj, String numIE, double faturamentoAnual) {
        super(nome,email,fone);
        this.cnpj = cnpj;
        this.numIE = numIE;
        this.faturamentoAnual = faturamentoAnual;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNumIE() {
        return numIE;
    }

    public void setNumIE(String numIE) {
        this.numIE = numIE;
    }

    public double getFaturamentoAnual() {
        return faturamentoAnual;
    }

    public void setFaturamentoAnual(double faturamentoAnual) {
        this.faturamentoAnual = faturamentoAnual;
    }
}