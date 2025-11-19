import javax.swing.JOptionPane;

public class Main {
    public static void main(String[] args) {
        String nomeTxt = JOptionPane.showInputDialog("Digite o nome da empresa");
        String cnpjTxt = JOptionPane.showInputDialog("Digite o CNPJ");
        String numTxt = JOptionPane.showInputDialog("Digite o IE");
        String emailTxt = JOptionPane.showInputDialog("Digite o email");
        String foneTxt = JOptionPane.showInputDialog("Digite o fone");
        String fatAnualTxt = JOptionPane.showInputDialog("Digite o fatur. anual");
        double fatAnual = Double.parseDouble(fatAnualTxt);

        ClienteJuridico c1 = new ClienteJuridico(nomeTxt,emailTxt,foneTxt,cnpjTxt,numTxt,fatAnual);
          /*c1.setNome("Paulo");
          c1.setEmail("paulo@gmail.com");
          c1.setFone("61985858596");
          c1.setSalarioBruto(7800);*/
        System.out.println("\nJuridico:\nCNPJ: "+c1.getCnpj()+"\nNumIE: "+c1.getNumIE()+"\nFaturamento: "+c1.getFaturamentoAnual()+"\n");
        JOptionPane.showMessageDialog(null,"Faturamento Anual"+c1.getFaturamentoAnual());
        ClienteFisico c2 = new ClienteFisico("Gabriel",
                "gabriel@nanasa.com.br",
                "61989897887",
                5600,"999.999.000-00");
        ClienteFisico c3 = new ClienteFisico("Gabriel",
                "gabriel@nanasa.com.br",
                "61989897887",
                5600,"999.999.000-00");
        ClienteFisico c4 = new ClienteFisico("Gabriel Jesus",
                "gabriel@nanasa.com.br",
                "61989897887",
                10000,"999.999.000-00");
        System.out.println("Físico:\nSalário Bruto: "+c2.getSalarioBruto()+"\nCPF: "+c2.getCpf());
        System.out.println("Quantidade de objetos criados:"+Cliente.contObj);
        System.out.println("Salário Líquido:"+c4.calcular());

        double  leao =10;
        int formiga = (int) leao;
        // <T>
        System.out.println(formiga);
        String status = "lab";
        if(formiga == 10 && status.equals("lab")){
            System.out.println("velinhos de laboratório");
        }else{
            System.out.println("novinhos de laboratório");
        }
        //switch já fizemos



    }
}