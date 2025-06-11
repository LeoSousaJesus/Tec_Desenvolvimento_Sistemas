package com.mycompany.relacionamento;

import java.util.ArrayList;
import java.util.List;


public class Universidade {
    String nome;
    
    List<Aluno> alunos = new ArrayList<>(); //agregação
    
    Universidade(String nome){
        this.nome = nome;
    }
    
    void adicionarAluno(Aluno aluno){
        alunos.add(aluno);
    }
    
    void listarAlunos(){
        System.out.println("Universidade :" + nome);
        for (Aluno a : alunos){
            System.out.println("Aluno : " + a.nome);
        }
    }
    

}
