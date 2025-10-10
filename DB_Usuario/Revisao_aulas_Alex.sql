--  acessar o MySQL pelo Shell
-- mysql -u -p
-- ao pedir a senha apenas aperte "Enter"

-- listar todos os usuarios do banco
-- SELECT user FROM mysql.user;

--
-- CREATE user 'nome_usuario'@'localhost' IDENTIFIED BY 'senha';

-- liste novamente todos os usuários do banco
-- SELECT user FROM mysql.user;

-- conceder privilégios para o usuário
-- conceder um privilégio (exemplo: SELECT) para uma tabela de um banco
-- GRANT SELECT ON nome_banco.nome_tabela TO nome_usuario;

-- conceder mais de um privilégio(exemplo:INSERT e UPDATE)
-- para todads as tabelas de um banco
-- GRANT INSERT, UPDATE ON nome_banco.* TO nome_usuario;

-- conceder privilégios para todos os bancos de dados (exemplo: DELETE)
-- GRANT DELETE ON *.* TO nome_usuario;

-- conceder todos os privilégios para todas as tabelas de um banco
-- GRANT ALL PRIVILEGES ON nome_banco.* TO nome_usuario;

-- Sempre após um GRANT, execute o comando abaixo:
-- FLUSH PRIVILEGES;

-- caso o comando GRANT retorne um erro, execute o comando abaixo:
-- REPAIR TABLE mysql.db;

-- revogar privilégios (exemplo: concedeu o SELECT e quer revogar)
-- REVOKE PRIVILEGES ON nome_banco_tabela FROM nome_usuario;
-- REVOKE INSERT, UPDATE ON nome_banco.* FROM nome_usuario;
-- REVOKE DELETE ON *.* FROM nome_usuario;
-- REVOKE ALL PRIVILEGES ON nome_banco.* FROM 'nome_usuario'@'localhost';

-- não esquecer de executar o comando abaixo após um REVOKE:
-- FLUSH PRIVILEGES;

-- deletar o usuário
-- DROP USER 'npome_usuario'@'localhost';

-- se quiserem ver os privilégios do usuário
-- SHOW GRANTS FOR 'nome_usuario'@'localhost';


