public class Livro extends ItemBiblioteca implements GerenciamentoEmprestimo {

    // Construtor
    public Livro(String titulo, String autor, int anoPublicacao) {
        // Chama o construtor da classe pai (ItemBiblioteca)
        super(titulo, autor, anoPublicacao);
    }

    // Implementação do método abstrato da classe pai (ItemBiblioteca)
    // Aplica o conceito de SOBRESCRITA e POLIMORFISMO.
    @Override
    public int calcularPrazoDevolucao() {
        // Livros têm um prazo de devolução maior (ex: 15 dias)
        return 15;
    }

    // Implementação dos métodos da Interface GerenciamentoEmprestimo

    @Override
    public void emprestar() {
        if (!this.emprestado) {
            this.emprestado = true;
            System.out.printf("Livro '%s' emprestado com sucesso. Prazo de devolução: %d dias.\n",
                    getTitulo(), calcularPrazoDevolucao());
        } else {
            System.out.printf("Livro '%s' já está emprestado.\n", getTitulo());
        }
    }

    /**
     * Sobrecarga do método emprestar() para permitir dias extras.
     * Aplica o conceito de SOBRECARGA.
     * @param diasExtras Número de dias extras para o empréstimo.
     */
    public void emprestar(int diasExtras) {
        if (!this.emprestado) {
            this.emprestado = true;
            int prazoTotal = calcularPrazoDevolucao() + diasExtras;
            System.out.printf("Livro '%s' emprestado com sucesso (Empréstimo Especial). Prazo de devolução: %d dias.\n",
                    getTitulo(), prazoTotal);
        } else {
            System.out.printf("Livro '%s' já está emprestado.\n", getTitulo());
        }
    }

    @Override
    public void devolver() {
        if (this.emprestado) {
            this.emprestado = false;
            System.out.printf("Livro '%s' devolvido com sucesso.\n", getTitulo());
        } else {
            System.out.printf("Livro '%s' não estava emprestado.\n", getTitulo());
        }
    }

    @Override
    public String consultarStatus() {
        return this.emprestado ? "Emprestado" : "Disponível";
    }
}
