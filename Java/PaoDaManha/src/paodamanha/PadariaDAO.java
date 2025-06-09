package paodamanha;

import java.sql.*;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PadariaDAO {

    private Connection connection;

    public PadariaDAO() {
        this.connection = new ConnectionFactory().connectDB();
    }
    
    public void criaUsuario(Padaria padaria) throws SQLException{
        String sql = "INSERT INTO tb_usuario (nome, email, telefone, tipo_usuario) VALUES(?,?,?,?)";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            stmt.setString(1, padaria.getNome());
            stmt.setString(2, padaria.getEmail());
            stmt.setString(3, padaria.getTelefone());
            
            stmt.executeUpdate();
            
            System.out.println("Deu certo");
        } catch (SQLException e) {
            System.out.println("Deu ruim" + e.getMessage());
        }
        finally{
            if(stmt != null)
                stmt.close();
        }
        
    }
    
    public List<Padaria> listarUsuarios() throws SQLException {
        List<Padaria> lista = new ArrayList<>();
        
        String sql = "SELECT * FROM tb_usuario";
        
        PreparedStatement pstm = null;
        ResultSet rs = null;
        
        try {
            pstm = connection.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while (rs.next()){
                Padaria padaria = new Padaria(0, "", "", "");
                
                padaria.setId(rs.getInt("id_usuario"));
                padaria.setNome(rs.getString("nome"));
                padaria.setEmail(rs.getString("email"));
                padaria.setTelefone(rs.getString("telefone"));
                
                lista.add(padaria);
            }
        } catch (SQLException erro) {
            System.out.println("Erro" + erro.getMessage());
        }
        
        finally{
            if(rs != null)
                rs.close();
            if(pstm != null)
                pstm.close();
        }
        return lista;
    }
}


