package Aula_Java.Biblioteca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionsFactory {
    
    Connection conectaBD;
    public Connection conectaBD(){
        Connection conn = null;
     try {
        // Configurações da conexão com o banco de dados 
         String url = "jdbc:mysql://localhost:3306/cadastro?useSSL=false";
         String user ="root";
         String password = "";
         conn = DriverManager.getConnection(url,user, password);
         
     }catch (SQLException e){
                System.out.println("Deu ruim"+e.getMessage());
    }
        return conn;
    }
}
}
