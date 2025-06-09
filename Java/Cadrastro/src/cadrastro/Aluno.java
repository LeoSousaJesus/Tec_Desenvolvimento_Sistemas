package cadrastro;

public class Aluno extends Pessoa{
    private int matricula;
    private String curso;
    private int id_usuario;
    
    // CONSTRUCTOR 
    
    public Aluno(int matricula, String curso, String nome, String endereco, String sexo, String cpf) {
        super(nome, endereco, sexo, cpf);
        this.matricula = matricula;
        this.curso = curso;
    }
    
    // CONSTRUCTOR VAZIO
    
    public Aluno() {
        
    }
    
    // CONSTRUCTOR COM ID
    
//    public Aluno(int matricula, String curso, String nome, String endereco, String sexo, String cpf) {
//        super(nome, endereco, sexo, cpf);
//        this.matricula = matricula;
//        this.curso = curso;
//        this.id_usuario = id_usuario;
//    }
    
    
    // GETTTER AND SETTER

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    @Override
    public String toString() {
        return super.toString() + "matricula=" + matricula + ", curso=" + curso + '}';
    }
    
    
    
}
