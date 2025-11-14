//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Cliente cliente1 = new Cliente();
        cliente1.setNome("Leo");
        cliente1.setEmail("leo@email.com");
        cliente1.setTelefone("6193457894");
        cliente1.setSalarioBruto(8500);
        System.out.println("nome: "+cliente1.getNome());

        Cliente cliente2 = new Cliente();
        cliente1.setNome("Dani");
        cliente1.setEmail("dani@email.com");
        cliente1.setTelefone("6198547896");
        cliente1.setSalarioBruto(10500);
        System.out.println("nome: "+cliente1.getNome());
    }
}