//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        ClienteJuridico c1 = new ClienteJuridico("3213685", "27835623569", 170000);
        CalcularImpostoINSS cImposto = new CalcularImpostoINSS();
          /*c1.setNome("Paulo");
          c1.setEmail("paulo@gmail.com");
          c1.setFone("61985858596");
          c1.setSalarioBruto(7800);*/

        double imposto = cImposto.calcularImpostoINSS(c1.getFaturamentoAnual()/12);
        System.out.println("\nJuridico:\nCNPJ: "+c1.getCnpj()+"\nNumIE: "+c1.getNumIE()+"\nFaturamento: "+ (imposto * 12) +"\n");

        ClienteFisico c2 = new ClienteFisico(900, "727272727");
        System.out.println("Físico:\nSalário Bruto: "+c2.getSalarioBruto()+"\nCPF: "+c2.getCpf());

    }
}