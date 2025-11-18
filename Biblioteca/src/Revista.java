
    public class Revista extends ItemBiblioteca implements GerenciamentoEmprestimo {

        // Construtor
        public Revista(String titulo, String autor, int anoPublicacao) {
            // Chama o construtor da classe pai (ItemBiblioteca)
            super(titulo, autor, anoPublicacao);
        }

        // Implementação do método abstrato da classe pai (ItemBiblioteca)
        // Aplica o conceito de SOBRESCRITA e POLIMORFISMO.
        @Override
        public int calcularPrazoDevolucao() {
            // Revistas têm um prazo de devolução menor (ex: 7 dias)
            return 7;
        }

        // Implementação dos métodos da Interface GerenciamentoEmprestimo

        @Override
        public void emprestar() {
            if (!this.emprestado) {
                this.emprestado = true;
                System.out.printf("Revista '%s' emprestada com sucesso. Prazo de devolução: %d dias.\n",
                        getTitulo(), calcularPrazoDevolucao());
            } else {
                System.out.printf("Revista '%s' já está emprestada.\n", getTitulo());
            }
        }

        @Override
        public void devolver() {
            if (this.emprestado) {
                this.emprestado = false;
                System.out.printf("Revista '%s' devolvida com sucesso.\n", getTitulo());
            } else {
                System.out.printf("Revista '%s' não estava emprestada.\n", getTitulo());
            }
        }

        @Override
        public String consultarStatus() {
            return this.emprestado ? "Emprestada" : "Disponível";
        }
    }

