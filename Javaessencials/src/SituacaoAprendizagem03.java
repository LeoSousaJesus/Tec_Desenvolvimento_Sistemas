public class SituacaoAprendizagem03 {
    private String nomeClasse;
    private String nomeMetodo;
    private String nomeConstante;
    private String nomeVariavel;

    public SituacaoAprendizagem03() {
    }

    public SituacaoAprendizagem03(String nomeClasse, String nomeMetodo, String nomeConstante, String nomeVariavel) {
        this.nomeClasse = nomeClasse;
        this.nomeMetodo = nomeMetodo;
        this.nomeConstante = nomeConstante;
        this.nomeVariavel = nomeVariavel;
    }
    //Criar metodo para verificar nome da classe fornecida
    //A classe segue o padrão(PascalCase)
    //Criar um metodo para verificar se o nome do metodo fornecida está correto(camelCase)
    //Criar um metodo para verificar se o nome da constante segue o padrao(SCREAMING_SNAKE_CASE)

    public String getNomeClasse() {
        return nomeClasse;
    }

    public void setNomeClasse(String nomeClasse) {
        this.nomeClasse = nomeClasse;
    }

    public String getNomeMetodo() {
        return nomeMetodo;
    }

    public void setNomeMetodo(String nomeMetodo) {
        this.nomeMetodo = nomeMetodo;
    }

    public String getNomeConstante() {
        return nomeConstante;
    }

    public void setNomeConstante(String nomeConstante) {
        this.nomeConstante = nomeConstante;
    }

    public String getNomeVariavel() {
        return nomeVariavel;
    }

    public void setNomeVariavel(String nomeVariavel) {
        this.nomeVariavel = nomeVariavel;
    }

    public String verificarClasse() {
        if (this.nomeClasse == null || this.nomeClasse.isEmpty() || this.nomeClasse.contains(" ")) {
            return "Digite o nome da classe!";
        } else {
            char primeiroCaracterClasse = this.nomeClasse.charAt(0);
            if (Character.isUpperCase(primeiroCaracterClasse)) {
                return """
                            Padrão correto!
                       """;
            } else {
                return "Padrão incorreto!";
            }
        }
    }

    public String verificarMetodo() {
        if (this.nomeMetodo == null || this.nomeMetodo.isEmpty() || this.nomeMetodo.contains(" ")) {
            return "Digite o nome do método!";
        } else {
            char primeiroCaracterMetodo = this.nomeMetodo.charAt(0);
            if (Character.isLowerCase(primeiroCaracterMetodo)) {
                return """
                        Padrão correto!
                       """;
            } else {
                return """
                        Padrão incorreto!
                       """;
            }
        }
    }

    public String verificarConstante() {
        if (this.nomeConstante == null || this.nomeConstante.isEmpty() || this.nomeConstante.contains(" ")) {
            return "Digite o nome da constante!";
        } else {
            char primeiroCaracterConstante = this.nomeConstante.charAt(0);
            if (Character.isUpperCase(primeiroCaracterConstante)) {
                return """
                        Padrão correto!
                       """;
            } else {
                return """
                        Padrão incorreto!
                       """;
            }
        }
    }

    public String verificarVariavel() {
        if (this.nomeVariavel == null || this.nomeVariavel.isEmpty() || this.nomeVariavel.contains(" ")) {
            return "Digite o nome da variável!";
        } else {
            char primeiroCaracterVariavel = this.nomeVariavel.charAt(0);
            if (Character.isLowerCase(primeiroCaracterVariavel)) {
                return """
                        Padrão correto!
                       """;
            } else {
                return """
                        Padrão incorreto!
                       """;
            }
        }
    }
}
