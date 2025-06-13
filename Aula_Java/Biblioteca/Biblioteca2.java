package Aula_Java.Biblioteca;

// ConectionsFactory.java
// Esta classe é responsável por estabelecer a conexão com o banco de dados MySQL.
// Certifique-se de ter o driver JDBC do MySQL no classpath do seu projeto.

import java.sql.SQLException;
import java.util.List;

public class Biblioteca2 {
    public static void main(String[] args) throws SQLException {
       UsuarioDao usuarioDao = new UsuarioDao(); 
       try{
            int idBuscado = 7;
            Usuario usuario = usuarioDao.buscarUsuarioPorId(idBuscado);
            
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

