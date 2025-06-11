package com.mycompany.banco;

import java.util.Scanner;

public class Banco {

    public static void main(String[] args) {
        Conta conta1 = new Conta();
        Scanner input = new Scanner(System.in);
        
        conta1.abrirConta();
        
        System.out.print(">>Escolha uma opcao \n[1] Sacar\n[2] Depositar\n[3] Ver Conta \n[4] Fechar Conta\n>> ");
        int opcao = input.nextInt();
        
        switch (opcao) {
		case 1:
				System.out.print("Saldo atual : " + conta1.getSaldo() + "\n");
				conta1.sacar();
			break;
		case 2:
				conta1.depositar();
			break;
		case 3:
			System.out.print("Conta status :  Ativada \n Nome : "+conta1.getDonoConta()+"\n Numero da Conta :"+conta1.getNumConta()+"\n Saldo : "+conta1.getSaldo());
			break;
		case 4:
				conta1.fecharConta();
			break;
		default:
			System.err.print("Error");
			break;
		}

        
        
        //conta1.abrirConta();
        System.out.print(conta1.getSaldo());
        //conta1.depositar();
    }
}
