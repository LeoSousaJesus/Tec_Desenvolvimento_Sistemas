package Aula_Java.Biblioteca;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UsuarioDAO() {
    private Connection connection;

    public UsuarioDAO() {
    this.connection = new ConectionsFactory().conectaBD;
}
    public void criaUsuario (Usuario usuario) throws SQLException{
        String sql = "INSERT INTO usuarios (nome,email,telefone,"
                + "tipo_usuario) VALUES (?,?,?,?) ";

        PreparedStatement pstm = null;
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, usuario.getNome());
            pstm.setString(2, usuario.getEmail());
            pstm.setString(3, usuario.getTelefone());
            pstm.setString(4, usuario.getTipo_usuario());
            
            pstm.executeUpdate();
            System.out.println("Deu certo!!!");          
        }catch(SQLException e) {
            System.out.println("Deu ruim!!!"+e.getMessage());
        }finally{
            if(pstm !=null)pstm.close();
        }
}


public List<Usuario> listarUsuarios()throws SQLException{
    List<Usuario> lista = new ArrayList<>();
    String sql = "SELECT * FROM usuarios";
    
    PreparedStatement pstm = null;
    ResultSet rs = null;
    
    try{
        pstm = connection.prepareCall(sql);
        rs = pstm.executeQuery();
        while (rs.next()){
            Usuario usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString("nome"));
            usuario.setEmail(rs.getString("email"));
            usuario.setTelefone(rs.getString("telefone"));
            usuario.setTipo_usuario(rs.getString("tipo_usuario"));
            
            lista.add(usuario);
        }
    }catch (SQLException e){
        System.out.println("Erro"+e.getMessage());
    }finally{
        if(rs != null)rs.close();
        if(pstm !=null)pstm.close();
    }
    return lista;
}
    
    public Usuario buscarUsuarioPorId(int id)throws SQLException{
        String sql = "SELECT * FROM usuarios WHERE id=? ";
        
        PreparedStatement pstm = null;
        ResultSet rs = null;
        Usuario usuario =null;
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            if(rs.next()){
            usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString("nome"));
            usuario.setEmail(rs.getString("email"));
            usuario.setTelefone(rs.getString("telefone"));
            usuario.setTipo_usuario(rs.getString("tipo_usuario"));
            }
        }catch (SQLException e){
            System.out.println("Erro "+e.getMessage());
        }finally{
            if(rs !=null)rs.close();
            if(pstm !=null)pstm.close();
        }
        return usuario;
    }
    public void atualizaUsuario (Usuario usuario) throws SQLException{
        String sql = "UPDATE usuarios SET nome =?, email =?,"
                +" telefone=?, tipo_usuario =?";
        PreparedStatement pstm = null;
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1,usuario.getNome());
            pstm.setString(2,usuario.getEmail());
            pstm.setString(3,usuario.getTelefone());
            pstm.setString(4,usuario.getTipo_usuario());
            pstm.setInt(5,usuario.getId());
            
            int linhasAfetadas = pstm.executeUpdate();
            if (linhasAfetadas > 0){
                System.out.println("Atualizado com Sucesso!");
            }else{
                System.out.println("Usuario não encontrado");
            }
        }catch(SQLException e){
            System.out.println("Erro "+e.getMessage());
        }finally{
            if (pstm !=null)pstm.close();
        }
    }
}
// O código acima define a classe UsuarioDAO, que é responsável por interagir com o banco de dados para criar usuários.
// A classe possui um construtor que estabelece a conexão com o banco de dados usando a classe ConectionsFactory.
// O método criarUsuario recebe um objeto Usuario e executa uma instrução SQL para inserir os dados do usuário na tabela "usuarios".
// Ele utiliza um PreparedStatement para evitar injeção de SQL e garantir a segurança dos dados.
// O método trata exceções SQL e garante que o PreparedStatement seja fechado após a execução, evitando vazamentos de recursos.
// A classe ConectionsFactory é responsável por estabelecer a conexão com o banco de dados MySQL, fornecendo a URL, usuário e senha.
// A conexão é estabelecida no construtor da classe UsuarioDAO, e o método conectaBD retorna um objeto Connection.
// A classe UsuarioDAO é uma parte fundamental do padrão DAO (Data Access Object), que separa a lógica de acesso a dados da lógica de negócios, promovendo uma arquitetura mais limpa e organizada.
// A classe UsuarioDAO pode ser estendida para incluir métodos adicionais, como atualizar, excluir e consultar usuários, tornando-a uma classe versátil para manipulação de dados de usuários em um sistema de biblioteca ou qualquer outro sistema que necessite de gerenciamento de usuários.
// A classe UsuarioDAO pode ser usada em conjunto com outras classes, como a classe Biblioteca2, que demonstra como criar um usuário usando o DAO.
// A classe Biblioteca2 é um exemplo de uso da classe UsuarioDAO, onde uma conexão com o banco de dados é estabelecida e um novo usuário é criado.