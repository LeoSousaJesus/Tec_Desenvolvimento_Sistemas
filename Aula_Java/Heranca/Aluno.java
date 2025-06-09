package Aula_Java.Heranca;

public class Aluno extends Pessoa {
    private String matricula;
    private String curso;

    public Aluno(String nome, int idade, String sexo, String curso) {
        super(nome, idade, sexo);
        this.curso = curso;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }
}
