    package Aula_Java.Biblioteca;

// ConectionsFactory.java
// Esta classe é responsável por estabelecer a conexão com o banco de dados MySQL.
// Certifique-se de ter o driver JDBC do MySQL no classpath do seu projeto.


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConectionsFactory {
    public Connection conectaBD(){
        Connection conn = null;
     try {
         String url = "jdbc:mysql://localhost:3306/cadastro?useSSL=false";
         String user ="root";
         String password = "";
         conn = DriverManager.getConnection(url,user, password);
         
     }
        
     catch (SQLException erro){
    System.out.println("Deu ruim"+erro.getMessage());
    }
    return conn;
    }
}