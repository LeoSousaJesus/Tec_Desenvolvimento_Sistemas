package com.mycompany.relacionamento;

public class Relacionamento {

    public static void main(String[] args) {
        Escola escola = new Escola("Escola Tecnica Federal");
        Professor prof = new Professor("Joao", escola);
        
        prof.mostrarDados();
        
        // Agregação
        
        Universidade univ = new Universidade("UFBA");
        
        Aluno a1 = new Aluno("Maria");
        
        Aluno a2 = new Aluno("Carlos");
        
        univ.adicionarAluno(a1);
        
        univ.adicionarAluno(a2);
        
        univ.listarAlunos();
        
        // Composição
        
        Corpo corpo = new Corpo();
        
        corpo.viver();
    }
}
