import java.util.ArrayList;
import java.util.List;

public class SituacaoAprendizagem05 {
    // Demonstrar o while
    public void demonstrarWhile() {
        int cont = 0;
        while (cont <= 6) {
            System.out.println("Fundamentos de Programação");
            cont = cont + 1;
        }
    }

    public void demonstrarFor() {
        //Inicialização - condição - incremento
        for (int cont = 0; cont <= 9; cont++) {
            System.out.println("Fundamentos de Programação");
        }
    }

    //30 anos
    //Java 5 - Collections
    public void demonstrarCollections() {
        //Criar coleção
        List<String> niveisCurso = new ArrayList<>();

        //Adiciona na coleção
        niveisCurso.add("Base - Fundamentos de Programação");
        niveisCurso.add("Nível 1 - Aplicações Web com Java e Spring");
        niveisCurso.add("Nível 2 - APIs Seguras, Microsserviços, CI/CD");
        niveisCurso.add("Nível 3 - Sistemas Reativos, Observabilidade e Arquitetura Avançada");

        //for-each ou for aprimorado
        for (String nivel : niveisCurso) {
            System.out.println(nivel + "\t");
        }
    }
}
