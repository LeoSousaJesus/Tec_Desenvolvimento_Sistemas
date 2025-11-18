import java.util.ArrayList;
import java.util.List;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

                System.out.println("=================================================");
                System.out.println("  Demonstração do Sistema de Biblioteca (POO)  ");
                System.out.println("=================================================\n");

                // 1. Instanciação de objetos (Livro e Revista)
                Livro livro1 = new Livro("O Senhor dos Anéis", "J.R.R. Tolkien", 1954);
                Revista revista1 = new Revista("National Geographic - Edição Especial", "National Geographic Society", 2023);

                System.out.println("--- 1. Herança e Construtor ---");
                System.out.printf("Item 1 (Livro): %s, %s, %d\n", livro1.getTitulo(), livro1.getAutor(), livro1.getAnoPublicacao());
                System.out.printf("Item 2 (Revista): %s, %s, %d\n\n", revista1.getTitulo(), revista1.getAutor(), revista1.getAnoPublicacao());


                // 2. Demonstração de Sobrescrita e Polimorfismo (Método Abstrato)
                System.out.println("--- 2. Sobrescrita e Polimorfismo (Prazo de Devolução) ---");
                System.out.printf("Prazo de devolução do Livro: %d dias\n", livro1.calcularPrazoDevolucao());
                System.out.printf("Prazo de devolução da Revista: %d dias\n\n", revista1.calcularPrazoDevolucao());


                // 3. Demonstração de Sobrecarga (Apenas na classe Livro)
                System.out.println("--- 3. Sobrecarga (Empréstimo de Livro) ---");
                // Empréstimo padrão
                livro1.emprestar();
                // Empréstimo com dias extras (Sobrecarga)
                Livro livro2 = new Livro("1984", "George Orwell", 1949);
                livro2.emprestar(5); // 5 dias extras
                System.out.println();


                // 4. Demonstração de Interface e Polimorfismo (GerenciamentoEmprestimo)
                System.out.println("--- 4. Interface e Polimorfismo (Lista de Itens Emprestáveis) ---");

                // Lista de itens que implementam a interface GerenciamentoEmprestimo
                List<GerenciamentoEmprestimo> itensEmprestaveis = new ArrayList<>();
                itensEmprestaveis.add(livro1);
                itensEmprestaveis.add(revista1);
                itensEmprestaveis.add(livro2);

                revista1.emprestar(); // Empresta a revista

                for (GerenciamentoEmprestimo item : itensEmprestaveis) {
                    // O método consultarStatus() é chamado polimorficamente
                    System.out.printf("Status de '%s': %s\n",
                            ((ItemBiblioteca)item).getTitulo(), // Cast para acessar o título (atributo da classe abstrata)
                            item.consultarStatus());
                }
                System.out.println();

                // Devolução
                System.out.println("--- 5. Devolução (Interface) ---");
                livro1.devolver();
                revista1.devolver();
                System.out.println();


                // 6. Demonstração de Método Worker
                System.out.println("--- 6. Método Worker (Relatório Detalhado) ---");
                System.out.println(livro2.gerarRelatorioDetalhado());
                System.out.println(revista1.gerarRelatorioDetalhado());
            }
        }

