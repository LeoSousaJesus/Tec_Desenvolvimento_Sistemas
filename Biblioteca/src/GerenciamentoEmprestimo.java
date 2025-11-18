public interface GerenciamentoEmprestimo {

        /**
         * Método para registrar o empréstimo do item.
         */
        void emprestar();

        /**
         * Método para registrar a devolução do item.
         */
        void devolver();

        /**
         * Método para consultar o status atual do item (emprestado ou disponível).
         * @return Uma String descrevendo o status.
         */
        String consultarStatus();
    }

