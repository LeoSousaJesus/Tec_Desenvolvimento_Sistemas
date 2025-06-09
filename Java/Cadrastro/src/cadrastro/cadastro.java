package cadrastro;

import java.util.Scanner;
import java.sql.SQLException;
import java.util.Scanner;

public class cadastro{

    public static void main(String[] args) {
        
//        AlunoDAO alunodao = new AlunoDAO();
//        
//        Scanner input = new Scanner(System.in);
//        int opcao = 0;
//        
//        while (opcao != 4) {   
//            
//            System.out.print("Banco de dados\nEscolha uma opcao\n[1] Inserir\n[2] Atualizar\n[3] Deletar\n[4] Exit\n>> ");
//            opcao = input.nextInt();
//            input.nextLine();
//            
//            switch (opcao) {
//                case 1: {
//                        
//			System.out.print("Nome : ");
//		    	String nome = input.nextLine();
//			
//			System.out.print("CPF : ");
//			int cpf = input.nextInt();
//			input.nextLine();
//			
//			System.out.print("Sexo : ");
//			String sexo = input.nextLine();
//			
//			System.out.print("Endereco : ");
//			String endereco = input.nextLine();
//                        
//                        System.err.println("Curso : ");
//                        String curso = input.nextLine();
//                        
//                        System.out.println("Matricula");
//                        int matricula = input.nextInt();
//			
//			Aluno aluno = new Aluno(matricula, curso, nome, endereco, sexo, cpf);
//	        
//                    try {
//                        alunodao.createCarro(aluno);
//                        System.out.println("Insert feito");
//                    
//                    } catch (SQLException e) {
//                        System.out.println("Deu ruim" + e.getMessage());
//                    }
//                    break;
//                }
//		
//		case 2: {
//                    System.out.println("Update");
//                    
//                    System.out.print("Nome : ");
//		    String nome = input.nextLine();
//			
//                    System.out.print("CPF : ");
//                    int cpf = input.nextInt();
//                    input.nextLine();
//			
//                    System.out.print("Sexo : ");
//                    String sexo = input.nextLine();
//			
//                    System.out.print("Curso : ");
//                    String curso = input.nextLine();
//                    
//                    System.out.println("Matricula : ");
//                    int matricula = input.nextInt();
//                    
//                    System.out.println("Endereco");
//                    String endereco = input.nextLine();
//                        
//                    System.out.println("Id_carro");
//                    int id_usuario = input.nextInt();
//                    
//                    // int matricula, String curso, String nome, String endereco, String sexo, int cpf
//                    
//                    Aluno aluno = new Aluno(matricula, curso, nome, endereco, sexo, cpf);
//                    
//                    aluno.setId_usuario(id_usuario);
//                    
//                    try {
//                        alunodao.updateCarro(aluno);
//                    } catch (SQLException erro) {
//                        System.out.println("Erro" + erro.getMessage());
//                    }
//                    break;
//                }
//                
//                
//                case 3: {
//                    
//                    System.out.print("Deletar\nDigite o id_carro\n>> ");
//                    int id_usuario = input.nextInt();
//                    
//                    try {
//                        alunodao.deleteCarro(id_usuario);
//                        
//                    } catch (SQLException erro) {
//                    System.out.println("Erro" + erro.getMessage());
//                    }
//                    break;
//                }
//        	
//                default:
//
//            }
//        }  
//        System.out.println("Banco Finalizado");
    }
}
