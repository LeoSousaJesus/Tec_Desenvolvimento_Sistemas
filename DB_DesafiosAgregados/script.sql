CREATE DATABASE IF NOT EXISTS DesafiosAgregados;
USE DesafiosAgregados;
-- 2. Criação da Tabela PRODUTOS
CREATE TABLE PRODUTOS (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

-- 3. Inserção de Dados de Exemplo
INSERT INTO PRODUTOS (nome_produto, categoria, preco, estoque) VALUES
('Mouse Gamer', 'Eletrônicos', 150.00, 50),
('Teclado Mecânico', 'Eletrônicos', 350.00, 30),
('Monitor 27"', 'Eletrônicos', 1200.00, 15),
('Caderno Universitário', 'Papelaria', 25.00, 200),
('Caneta Esferográfica', 'Papelaria', 5.00, 500),
('Mochila Escolar', 'Acessórios', 80.00, 75),
('Fone Bluetooth', 'Eletrônicos', 99.90, 40),
('Agenda 2024', 'Papelaria', 45.00, 100);

-- Qual é o número total de produtos cadastrados na tabela?
SELECT COUNT(*) as total_produtos FROM PRODUTOS;

-- Qual é o preço médio de todos os produtos?
SELECT AVG(preco) as preco_medio FROM PRODUTOS;

-- Qual é o produto mais caro (maior preco) e qual é o seu valor?
SELECT MAX(preco) as maior_preco FROM PRODUTOS;

-- Qual é o produto mais barato(menor preço) e qual é o seu valor?
SELECT MIN(preco) as menor_preco FROM PRODUTOS;

-- Qual é o valor total em estoque (soma do estoque) de todos os produtos?
SELECT SUM(estoque) as total_estoque FROM PRODUTOS;

-- Listar todas as categorias
SELECT categoria FROM PRODUTOS;

-- Para cada categoria, liste o número de produtos
SELECT categoria, COUNT(*) as numero_produtos
FROM PRODUTOS
GROUP BY categoria;

-- Ordenar os produtos selecionados em ordem. por padrão o defaut é ASC
SELECT * FROM PRODUTOS
ORDER BY preco DESC;

-- Usando Having
SELECT categoria, COUNT(*) as numero_produtos
FROM PRODUTOS
GROUP BY 

-- Calcule o preco médio dos produtos, mas apenas para a categoria 'Eletronicos'
SELECT AVG(preco) AS preco_medio 
FROM PRODUTOS
WHERE categoria = 'Eletrônicos';

-- Liste as categorias que possuem mais produtos de 2 produtos cadastrados
SELECT categoria, COUNT(*) as numero_produtos
FROM PRODUTOS
GROUP BY categoria
HAVING COUNT(*) > 2;

