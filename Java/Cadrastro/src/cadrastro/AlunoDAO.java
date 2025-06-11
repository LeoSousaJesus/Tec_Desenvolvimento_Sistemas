package cadrastro;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlunoDAO {
    private Connection connection;
    
    public AlunoDAO() {
        this.connection = new ConnectionFactory().connectDB();
    }
    
    public void createAluno(Aluno aluno) throws SQLException{
        String sql = "INSERT INTO tb_usuario (nome, cpf, sexo, endereco, curso, matricula) VALUES (?, ?, ?, ?, ?, ?);";
        
        PreparedStatement stmt;
        stmt = null;
        
        try {
            stmt = connection.prepareStatement(sql);
            
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getCpf());
            stmt.setString(3, aluno.getSexo());
            stmt.setString(4, aluno.getEndereco());
            stmt.setString(5, aluno.getCurso());
            stmt.setInt(6, aluno.getMatricula());
            
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
    public void updateAluno(Aluno aluno) throws SQLException{
        String sql = "UPDATE tb_usuario SET nome = ?, cpf = ?, sexo = ?, endereco = ?, curso = ?, matricula = ?  WHERE id_carro = ?";
        
        PreparedStatement stmt;
        stmt = null;
        
       
        
        try {
            stmt = connection.prepareStatement(sql);
            
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getCpf());
            stmt.setString(3, aluno.getSexo());
            stmt.setString(4, aluno.getEndereco());
            stmt.setString(5, aluno.getCurso());
            stmt.setInt(6, aluno.getMatricula());
            
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
    
    public void deleteAluno(int id) throws SQLException{
        String sql = "DELETE FROM tb_usuario WHERE id_carro = ?";
        
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
    
    public List<Aluno> listarUsuario() throws SQLException{
        
        List<Aluno> lista = new ArrayList<>();
        
        String sql = "SELECT * FROM tb_usuario";
        
        PreparedStatement pstm;
            pstm = null;
            
        ResultSet rs = null;
        
        try {
            pstm = connection.prepareStatement(sql);
            
            rs = pstm.executeQuery();
            
            while (rs.next()) {
                Aluno aluno = new Aluno();
                
                //aluno.setId_usuario(rs.getInt("id"));
                aluno.setNome(rs.getString("Nome"));
                aluno.setMatricula(rs.getInt("Matricula"));
                aluno.setSexo(rs.getString("Sexo"));
                aluno.setCpf(rs.getString("CPF"));
                aluno.setEndereco(rs.getString("Endereco"));      
                aluno.setCurso(rs.getString("Curso"));
                
                lista.add(aluno);
            }
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }
         return lista;
    }
    
    public void buscarPorId(int id){
        String sql = "SELECT * FROM tb_usuario WHERE id_usuario = ?";
        
        PreparedStatement pstm;
        pstm = null;
        
        ResultSet rs = null;
        
        try {
            pstm = connection.prepareStatement(sql);
            
            rs = pstm.executeQuery();
            
            while (rs.next()) {
                Aluno aluno = new Aluno();
                
                //aluno.setId_usuario(rs.getInt("id"));
                aluno.setNome(rs.getString("Nome"));
                aluno.setMatricula(rs.getInt("Matricula"));
                aluno.setSexo(rs.getString("Sexo"));
                aluno.setCpf(rs.getString("CPF"));
                aluno.setEndereco(rs.getString("Endereco"));      
                aluno.setCurso(rs.getString("Curso"));
            }
           
         pstm.setInt(1, id);
            
        } catch (Exception e) {
            
        }
    }

}
