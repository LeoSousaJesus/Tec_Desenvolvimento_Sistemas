package Aula_Java.Biblioteca;


import java.sql.SQLException;


public class Biblioteca {


    public static void main(String[] args) {
       ConectionsFactory conexao = new ConectionsFactory();
        
        String a = (conexao.conectaBD() !=null)?"Deu bom":"Deu ruim";
        System.out.println(a);
        
        try{
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = new Usuario(0,"Jubileu","jubileu@gmail.com","61993258789","Mentira");
    
        usuarioDAO.criarUsuario(usuario);
        }catch(SQLException e){
            System.out.println("Error:"+e.getMessage());
        }
    }
    
}