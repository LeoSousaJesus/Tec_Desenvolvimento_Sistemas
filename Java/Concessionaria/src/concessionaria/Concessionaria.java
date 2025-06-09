package concessionaria;

import java.util.Scanner;
import java.sql.SQLException;
import java.util.Scanner;

public class Concessionaria {

    public static void main(String[] args) {
        
        CarroDAO carrodao = new CarroDAO();
        
        Scanner input = new Scanner(System.in);
        int opcao = 0;
        
        while (opcao != 4) {   
            
            System.out.print("Banco de dados\nEscolha uma opcao\n[1] Inserir\n[2] Atualizar\n[3] Deletar\n[4] Exit\n>> ");
            opcao = input.nextInt();
            input.nextLine();
            
            switch (opcao) {
                case 1: {
			System.out.print("Marca : ");
		    	String marca = input.nextLine();
			
			System.out.print("Ano do Carro : ");
			int ano = input.nextInt();
			input.nextLine();
			
			System.out.print("Tipo : ");
			String tipo = input.nextLine();
			
			System.out.print("Portas : ");
			String portas = input.nextLine();
			
			Carro carro = new Carro(marca, ano, tipo, portas);
	        
                    try {
                        carrodao.createCarro(carro);
                        System.out.println("Insert feito");
                    
                    } catch (SQLException e) {
                        System.out.println("Deu ruim" + e.getMessage());
                    }
                    break;
                }
		
		case 2: {
                    System.out.println("Update");
                    
                    System.out.print("Marca : ");
		    String marca = input.nextLine();
			
                    System.out.print("Ano do Carro : ");
                    int ano = input.nextInt();
                    input.nextLine();
			
                    System.out.print("Tipo : ");
                    String tipo = input.nextLine();
			
                    System.out.print("Portas : ");
                    String portas = input.nextLine();
                        
                    System.out.println("Id_carro");
                    int id_carro = input.nextInt();
                        
                    Carro carro = new Carro(marca, ano, tipo, portas);
                    
                    carro.setId_carro(id_carro);
                    
                    try {
                        carrodao.updateCarro(carro);
                    } catch (SQLException erro) {
                        System.out.println("Erro" + erro.getMessage());
                    }
                    break;
                }
                
                
                case 3: {
                    
                    System.out.print("Deletar\nDigite o id_carro\n>> ");
                    int id_carro = input.nextInt();
                    
                    try {
                        carrodao.deleteCarro(id_carro);
                        
                    } catch (SQLException erro) {
                    System.out.println("Erro" + erro.getMessage());
                    }
                    break;
                }
        	
                default:
                    //throw new AssertionError();
            }
            
            //System.out.print("Banco de dados\nEscolha uma opcao\n[1] Inserir\n[2] Atualizar\n[3] Deletar\n[4] Exit\n>> ");
            //opcao = input.nextInt();
            //input.nextLine();
        }
        
        System.out.println("Banco Finalizado");
    }
}