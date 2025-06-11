package concessionaria;

import java.sql.*;

public class CarroDAO {
    private Connection connection;
    
    public CarroDAO() {
        this.connection = new ConnectionFactory().connectDB();
    }
    
    public void createCarro(Carro carro) throws SQLException{
        String sql = "INSERT INTO tb_carro (marca, ano, tipo, portas) VALUES (?, ?, ?, ?);";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            stmt.setString(1, carro.getMarca());
            stmt.setInt(2, carro.getAno());
            stmt.setString(3, carro.getTipo());
            stmt.setString(4, carro.getPortas());
            
            stmt.executeUpdate();
            
            System.out.println("Deu certo");
            
        } catch (SQLException erro) {
            System.out.println("Deu ruim " + erro.getMessage());
        }
        
        finally{
            if(stmt != null)
                stmt.close();
        }
    }
    
    // update
    public void updateCarro(Carro carro) throws SQLException{
        String sql = "UPDATE tb_carro SET marca = ?, ano = ?, tipo = ?, portas = ?  WHERE id_carro = ?";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            
            
            stmt.setString(1, carro.getMarca());
            stmt.setInt(2, carro.getAno());
            stmt.setString(3, carro.getTipo());
            stmt.setString(4, carro.getPortas());
            stmt.setInt(5, carro.getId_carro());
            
            stmt.executeUpdate();
            
            System.out.println("Update feito");
            
        } catch (SQLException erro) {
            System.out.println("Deu erro" + erro.getMessage());
        }
        
        finally{
            if(stmt != null)
                stmt.close();
        }
    }
    
    public void deleteCarro(int id) throws SQLException{
        String sql = "DELETE FROM tb_carro WHERE id_carro = ?";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            
            stmt.setInt(1, id);
            
            stmt.executeUpdate();
            
            System.out.println("Delete feito");
        } catch (Exception erro) {
            System.out.println("Deu Erro" + erro.getMessage());
        }
        finally{
            if(stmt != null)
                stmt.close();
        }
    }
}
