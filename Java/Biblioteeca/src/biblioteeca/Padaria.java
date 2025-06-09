package biblioteeca;


import java.sql.*;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Padaria{
    private Connection connection;

    public Padaria() {
        this.connection = new ConnectionFactory().connectDB();
    }
    
    public void criaUsuario(Usuario usuario) throws SQLException{
        String sql = "INSERT INTO tb_usuario (nome, email, telefone) VALUES(?,?,?)";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getTelefone());
            
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
                Usuario usuario = new Usuario(0, "", "", "", "");
                
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setTipo_usuario(rs.getString("tipo_usuario"));
                
                lista.add(usuario);
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

