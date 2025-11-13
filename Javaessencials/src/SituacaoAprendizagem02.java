public class SituacaoAprendizagem02 {
    private String nomeCanal;

    private String descricao;
    private double qtdInscritos;
    private boolean conheceCanal;
    private String url;
    private int  qtdHoras;
    private boolean temShorts;
    private int qtdVisualizacao;

    public SituacaoAprendizagem02() {

    }

    public SituacaoAprendizagem02(String nomeCanal, String descricao, double qtdInscrito, boolean conheceCanal, String url, int qtdHoras, boolean temShorts, int qtdVisualizacao) {
        this.nomeCanal = nomeCanal;
        this.descricao = descricao;
        this.qtdInscritos = qtdInscrito;
        this.conheceCanal = conheceCanal;
        this.url = url;
        this.qtdHoras = qtdHoras;
        this.temShorts = temShorts;
        this.qtdVisualizacao = qtdVisualizacao;
    }

    public int getQtdHoras() {
        return qtdHoras;
    }

    public void setQtdHoras(int qtdHoras) {
        this.qtdHoras = qtdHoras;
    }

    public boolean isTemShorts() {
        return temShorts;
    }

    public void setTemShorts(boolean temShorts) {
        this.temShorts = temShorts;
    }

    public double getQtdVisualizacao() {
        return qtdVisualizacao;
    }

    public void setQtdVisualizacao(int qtdVisualizacao) {
        this.qtdVisualizacao = qtdVisualizacao;
    }

    public String getNomeCanal() {
        return nomeCanal;
    }

    public void setNomeCanal(String nomeCanal) {
        this.nomeCanal = nomeCanal;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getQtdInscritos() {
        return qtdInscritos;
    }

    public void setQtdInscritos(double qtdInscrito) {
        this.qtdInscritos = qtdInscrito;
    }

    public boolean isConheceCanal() {
        return conheceCanal;
    }

    public void setConheceCanal(boolean conheceCanal) {
        this.conheceCanal = conheceCanal;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String verificaInscritos() {
        if ((this.qtdInscritos >= 500 && this.qtdHoras == 3000) || (this.qtdVisualizacao >= 3000000 && this.temShorts)) {
            return "Monetizado!";
        } else {
            return "Não monetizado!";
        }
    }
}
