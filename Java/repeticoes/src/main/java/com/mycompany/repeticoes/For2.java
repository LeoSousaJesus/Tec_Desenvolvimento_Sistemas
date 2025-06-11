package com.mycompany.repeticoes;

public class For2 {
    public static void main(String[] args){
        int linhas = 5;
        int colunas = 5;

        for (int i = 0; i < linhas; i++) { // Loop externo para as linhas
            for (int j = 0; j < colunas; j++) { // Loop interno para as colunas
                System.out.print("*"); // Imprime um asterisco seguido de um espaço
                
            }
            System.out.println(); // Move para a próxima linha após cada linha ser impressa
        }
    }
}
