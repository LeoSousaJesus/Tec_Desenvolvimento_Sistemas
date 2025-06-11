package com.mycompany.repeticoes;

public class vetor2 {
    public static void main(String[] args) {
            String mes[] = {"jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"};
            int dia[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for(int i = 0; i < mes.length; i++) {
	System.out.format("O mes %s ,tem %d dias \n", mes[i], dia[i]);
        }
    }
}
