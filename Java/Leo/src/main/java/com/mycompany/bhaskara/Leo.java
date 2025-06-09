package com.mycompany.felipe;

import java.io.BufferedWriter;
import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;
import java.time.LocalDate;
import java.time.Period;

public class Felipe {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ParImpar parImpar = new ParImpar();
        // BHASKARA
        bhaskara bhas = new bhaskara();
        
        System.out.println(">> Formula de Bhaskara <<");
        System.out.print("Digite o valor de A \n >>");
        bhas.setA(input.nextInt());
        System.out.print("Digite o valor de B \n >> ");
        bhas.setB(input.nextInt());
        System.out.print("Digite o valor de C \n obs: precisa valor negativo \n >> ");
        bhas.setC(input.nextInt());
        
        bhas.CalcularRaiz();
        
        // PARA OU IMPAR
        System.out.println(">> PAR OU IMPAR <<");
        System.out.println("Digite um valor \n >> ");
        
        parImpar.setN1(input.nextInt());
        parImpar.verificarImparPar();
        
        // TRIANGULO
        Triangulo tri = new Triangulo();
        
        System.out.println(">> Descubra o triangulo << ");
        System.out.print("Digite o primeiro lado do triangulo \n >> ");
        tri.setA(input.nextInt());
        System.out.print("Digite o segundo lado do triangulo \n >> ");
        tri.setB(input.nextInt());
        System.out.print("Digite o terceiro lado do triangulo \n >> ");
        tri.setC(input.nextInt());
        
        tri.verificar();
        
        // CLASSE PESSOA
        
        System.out.println(">> Quantas pessoas cadastrar <<");
        int qtd = input.nextInt();
        input.nextLine();
        
        Pessoa[] pessoas = new Pessoa[qtd];
        
        for(int i = 0; i > qtd; i++){
            System.out.println("\n Cadastro de Pessoa" + (i + 1) + "--");
            
            System.out.println("Nome \n >> ");
            String nome = input.nextLine();
            
            System.out.println("CPF \n >> ");
            String cpf = input.nextLine();
            
            System.out.println("Data de nascimento (AAA-MM-DD) \n >> ");
            String dt_nascimentoStr = input.nextLine();
            LocalDate dt_nascimento = LocalDate.parse(dt_nascimentoStr); 
            
            System.out.println("Altura (em metrs)");
            double altura = input.nextDouble();
            
            System.out.println("Peso (Kg)");
            double peso = input.nextDouble();
            
            pessoas[i] = new Pessoa(nome, cpf, dt_nascimento, altura, peso);
        }
        
        try {
            FileWriter write = new FileWriter("Pessoas.txt");
            write.write("Nome;cpf;dt_nascimento;Altura;Peso; IMC;MaiorIdade \n");
            for(Pessoa p : pessoas){
                write.write(p.toCSV()+"\n");
            }
            System.out.println("\nArquivo 'pessoas.txt' salvo cm sucesso");
            write.close();
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        
        // END
        
        String result = String.valueOf(parImpar.getN1());
        String caminhoArquivo = "Felipe.txt";
        // ESCREVENDO
        try {
            BufferedWriter escritor = new BufferedWriter(new FileWriter(caminhoArquivo));
            escritor.write(result);
            escritor.close();
            System.err.println("Texto salvo com sucesso em " + caminhoArquivo);
        } catch (IOException e) {
            System.err.println("Ocorreu um erro ao salvar o texto " + e.getMessage());
        }
        
        // LENDO
        
        try {
            BufferedReader leitor = new BufferedReader(new FileReader(caminhoArquivo));
            String linha;
            System.out.println("Salvo >> " + caminhoArquivo);
            while ((linha = leitor.readLine()) != null){
                System.out.println(linha);
            };
            
        } catch (Exception i) {
           System.out.println("Error" + i.getMessage());
        }
    }
}
