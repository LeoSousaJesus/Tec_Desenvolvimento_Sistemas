package Aula_Java.Biblioteca;


import java.sql.SQLException;
import java.util.List;

public class Biblioteca {
    public static void main(String[] args) throws SQLException {
       UsuarioDao usuarioDao = new UsuarioDao(); 
       try{
            int idBuscado = 7;
            Usuario usuario = usuarioDao.buscarUsuarioPorId(IdBuscado);
            
            if (usuario !=null){
                System.out.println("Encontrei o peste!");
                System.out.println("ID "+usuario.getId());
                System.out.println("Nome "+usuario.getNome());
                System.out.println("Email "+usuario.getEmail());
                System.out.println("Telefone "+usuario.getTelefone());
                System.out.println("Tipo "+usuario.getTipo_usuario());
                System.out.println("-------------------------------");
            }else{
                System.out.println("Usuario com ID "+idBuscado+"Não achei");
            }
        }catch(SQLException e){
            System.out.println("Erro:"+e.getMessage());
        }
    }    
}


