/**
 * Classe Abstrata que serve como base para todos os itens do acervo.
 * Contém atributos e métodos comuns.
 * Aplica os conceitos de CLASSE ABSTRATA, ATRIBUTO, CONSTRUTOR e MÉTODO.
 */
public abstract class ItemBiblioteca {

    // Atributos comuns a todos os itens
    private String titulo;
    private String autor;
    private int anoPublicacao;
    protected boolean emprestado; // protected para acesso direto nas classes filhas

    /**
     * Construtor para inicializar os atributos básicos do item.
     * Aplica o conceito de CONSTRUTOR.
     * @param titulo O título do item.
     * @param autor O autor ou editora do item.
     * @param anoPublicacao O ano de publicação do item.
     */
    public ItemBiblioteca(String titulo, String autor, int anoPublicacao) {
        this.titulo = titulo;
        this.autor = autor;
        this.anoPublicacao = anoPublicacao;
        this.emprestado = false; // Inicialmente, o item não está emprestado
    }

    // Getters
    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getAnoPublicacao() {
        return anoPublicacao;
    }

    public boolean isEmprestado() {
        return emprestado;
    }

    /**
     * Método Abstrato que obriga as classes filhas a definirem o prazo de devolução.
     * Aplica o conceito de MÉTODO ABSTRATO.
     * @return O número de dias para devolução.
     */
    public abstract int calcularPrazoDevolucao();

    /**
     * Método Worker: Realiza uma lógica de negócio simples (formatação de relatório).
     * Aplica o conceito de MÉTODO WORKER.
     * @return Uma String formatada com os dados do item.
     */
    public String gerarRelatorioDetalhado() {
        String status = this.emprestado ? "Emprestado" : "Disponível";
        return String.format(
                "--- Relatório do Item ---\n" +
                        "Título: %s\n" +
                        "Autor/Editora: %s\n" +
                        "Ano: %d\n" +
                        "Status: %s\n",
                this.titulo, this.autor, this.anoPublicacao, status
        );
    }
}
