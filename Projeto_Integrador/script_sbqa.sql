-- PROJETO INTEGRADOR SENAI: BANCO DE QUESTÕES INTELIGENTE (SBQA)

CREATE DATABASE IF NOT EXISTS sbqa_db;
USE sbqa_db;


-- Tabela NIVELAMENTO
CREATE TABLE NIVELAMENTO (
    id_nivel INT PRIMARY KEY AUTO_INCREMENT,
    descricao_nivel VARCHAR(50) NOT NULL UNIQUE
);

-- Tabela AREA
CREATE TABLE AREA (
    id_area INT PRIMARY KEY AUTO_INCREMENT,
    nome_area VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela PROFESSOR
CREATE TABLE PROFESSOR (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

-- Tabela QUESTAO (Superclasse - Joined Subclass Strategy)
CREATE TABLE QUESTAO (
    id_questao INT PRIMARY KEY AUTO_INCREMENT,
    texto_questao TEXT NOT NULL,
    tipo_questao ENUM('ME', 'DISC', 'CE', 'MI') NOT NULL COMMENT 'ME=Múltipla Escolha, DISC=Discursiva, CE=Certo/Errado, MI=Múltiplos Itens',
    data_criacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_ultima_alteracao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Campo para o TRIGGER
    professor_id INT NOT NULL,
    area_id INT NOT NULL,
    nivel_id INT NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES PROFESSOR(id_professor),
    FOREIGN KEY (area_id) REFERENCES AREA(id_area),
    FOREIGN KEY (nivel_id) REFERENCES NIVEL(id_nivel)
);

-- Tabela QUESTAO_MULTIPLA_ESCOLHA (Subclasse)
CREATE TABLE QUESTAO_MULTIPLA_ESCOLHA (
    id_questao INT PRIMARY KEY,
    gabarito_opcao_id INT, -- FK para OPCAO_RESPOSTA (será atualizada após a inserção das opções)
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

-- Tabela OPCAO_RESPOSTA
CREATE TABLE OPCAO_RESPOSTA (
    id_opcao INT NOT NULL,
    questao_id INT NOT NULL,
    texto_opcao VARCHAR(500) NOT NULL,
    PRIMARY KEY (id_opcao, questao_id),
    FOREIGN KEY (questao_id) REFERENCES QUESTAO_MULTIPLA_ESCOLHA(id_questao) ON DELETE CASCADE
);

-- Tabela QUESTAO_DISCURSIVA (Subclasse)
CREATE TABLE QUESTAO_DISCURSIVA (
    id_questao INT PRIMARY KEY,
    sugestao_gabarito_detalhado TEXT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

-- Tabela QUESTAO_CERTO_ERRADO (Subclasse)
CREATE TABLE QUESTAO_CERTO_ERRADO (
    id_questao INT PRIMARY KEY,
    julgamento_final BOOLEAN NOT NULL COMMENT '1 para Certo, 0 para Errado',
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

-- Tabela QUESTAO_MULTIPLOS_ITENS (Subclasse)
CREATE TABLE QUESTAO_MULTIPLOS_ITENS (
    id_questao INT PRIMARY KEY,
    contexto_principal TEXT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

-- Tabela ITEM_JULGAMENTO
CREATE TABLE ITEM_JULGAMENTO (
    id_item INT NOT NULL,
    questao_id INT NOT NULL,
    texto_item VARCHAR(500) NOT NULL,
    julgamento_correto BOOLEAN NOT NULL COMMENT '1 para Certo, 0 para Errado',
    PRIMARY KEY (id_item, questao_id),
    FOREIGN KEY (questao_id) REFERENCES QUESTAO_MULTIPLOS_ITENS(id_questao) ON DELETE CASCADE
);

-- Tabela AVALIACAO
CREATE TABLE AVALIACAO (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    data_aplicacao DATE NOT NULL,
    professor_id INT NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES PROFESSOR(id_professor)
);

-- Tabela AVALIACAO_QUESTAO (Relacionamento N:N entre AVALIACAO e QUESTAO)
CREATE TABLE AVALIACAO_QUESTAO (
    avaliacao_id INT NOT NULL,
    questao_id INT NOT NULL,
    PRIMARY KEY (avaliacao_id, questao_id),
    FOREIGN KEY (avaliacao_id) REFERENCES AVALIACAO(id_avaliacao) ON DELETE CASCADE,
    FOREIGN KEY (questao_id) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

-- Adiciona a FK na QUESTAO_MULTIPLA_ESCOLHA após a criação de OPCAO_RESPOSTA
ALTER TABLE QUESTAO_MULTIPLA_ESCOLHA
ADD CONSTRAINT fk_gabarito_opcao
FOREIGN KEY (gabarito_opcao_id, id_questao) REFERENCES OPCAO_RESPOSTA(id_opcao, questao_id);

-- 2. DML (Data Manipulation Language) - Dados de Teste

-- Inserção em NIVEL
INSERT INTO NIVEL (descricao_nivel) VALUES
('Fácil'),
('Médio'),
('Difícil');

-- Inserção em AREA
INSERT INTO AREA (nome_area) VALUES
('Banco de Dados'),
('Programação Web'),
('Redes de Computadores');

-- Inserção em PROFESSOR
INSERT INTO PROFESSOR (nome, email) VALUES
('Rômulo C. Silvestre', 'romulo.silvestre@senai.br'),
('Ana Paula Souza', 'ana.souza@senai.br');

-- Inserção de Questão Múltipla Escolha (ID 1)
INSERT INTO QUESTAO (texto_questao, tipo_questao, professor_id, area_id, nivel_id) VALUES
('Qual comando SQL é usado para recuperar dados de um banco de dados?', 'ME', 1, 1, 1);
SET @last_id_me = LAST_INSERT_ID();
INSERT INTO QUESTAO_MULTIPLA_ESCOLHA (id_questao) VALUES (@last_id_me);
INSERT INTO OPCAO_RESPOSTA (id_opcao, questao_id, texto_opcao) VALUES
(1, @last_id_me, 'UPDATE'),
(2, @last_id_me, 'INSERT'),
(3, @last_id_me, 'SELECT'), -- Gabarito
(4, @last_id_me, 'DELETE');
-- Atualiza o gabarito
UPDATE QUESTAO_MULTIPLA_ESCOLHA SET gabarito_opcao_id = 3 WHERE id_questao = @last_id_me;

-- Inserção de Questão Discursiva (ID 2)
INSERT INTO QUESTAO (texto_questao, tipo_questao, professor_id, area_id, nivel_id) VALUES
('Explique a diferença entre 2FN e 3FN na normalização de bancos de dados.', 'DISC', 2, 1, 3);
SET @last_id_disc = LAST_INSERT_ID();
INSERT INTO QUESTAO_DISCURSIVA (id_questao, sugestao_gabarito_detalhado) VALUES
(@last_id_disc, '2FN exige que atributos não-chave dependam da chave primária inteira. 3FN exige que atributos não-chave não dependam de outros atributos não-chave (dependência transitiva).');

-- Inserção de Questão Certo/Errado (ID 3)
INSERT INTO QUESTAO (texto_questao, tipo_questao, professor_id, area_id, nivel_id) VALUES
('O protocolo HTTP é um protocolo de camada de transporte.', 'CE', 1, 3, 2);
SET @last_id_ce = LAST_INSERT_ID();
INSERT INTO QUESTAO_CERTO_ERRADO (id_questao, julgamento_final) VALUES
(@last_id_ce, 0); -- Errado (HTTP é camada de aplicação)

-- Inserção de Questão Múltiplos Itens (ID 4)
INSERT INTO QUESTAO (texto_questao, tipo_questao, professor_id, area_id, nivel_id) VALUES
('Considerando o ciclo de vida de um objeto em Java, julgue os itens a seguir:', 'MI', 2, 2, 2);
SET @last_id_mi = LAST_INSERT_ID();
INSERT INTO QUESTAO_MULTIPLOS_ITENS (id_questao, contexto_principal) VALUES
(@last_id_mi, 'O Garbage Collector (GC) é responsável pela desalocação de memória.');
INSERT INTO ITEM_JULGAMENTO (id_item, questao_id, texto_item, julgamento_correto) VALUES
(1, @last_id_mi, 'O método finalize() é sempre chamado antes do GC desalocar o objeto.', 0), -- Errado
(2, @last_id_mi, 'Objetos sem referências ativas são elegíveis para a coleta de lixo.', 1); -- Certo

-- Inserção de Avaliação
INSERT INTO AVALIACAO (titulo, data_aplicacao, professor_id) VALUES
('Avaliação 1 - Fundamentos de BD', '2025-11-15', 1);
SET @last_id_aval = LAST_INSERT_ID();
INSERT INTO AVALIACAO_QUESTAO (avaliacao_id, questao_id) VALUES
(@last_id_aval, 1),
(@last_id_aval, 2),
(@last_id_aval, 3),
(@last_id_aval, 4);

-- 3. Recursos Avançados no MySQL (Obrigatórios)

-- 3.1. TRIGGER: Mecanismo de auditoria (registrar data da última alteração em uma questão)
DELIMITER //
CREATE TRIGGER trg_questao_update_timestamp
BEFORE UPDATE ON QUESTAO
FOR EACH ROW
BEGIN
    SET NEW.data_ultima_alteracao = CURRENT_TIMESTAMP();
END;
//
DELIMITER ;

-- 3.2. VIEW: Visualização que simplifica o acesso a dados complexos (Professor e contagem de questões)
CREATE VIEW vw_professor_resumo_questoes AS
SELECT
    p.nome AS Professor,
    a.nome_area AS Area,
    n.descricao_nivel AS Nivel,
    COUNT(q.id_questao) AS Total_Questoes
FROM
    PROFESSOR p
JOIN
    QUESTAO q ON p.id_professor = q.professor_id
JOIN
    AREA a ON q.area_id = a.id_area
JOIN
    NIVEL n ON q.nivel_id = n.id_nivel
GROUP BY
    p.nome, a.nome_area, n.descricao_nivel
ORDER BY
    p.nome, a.nome_area;

-- 3.3. FUNCTION: Cálculo customizado (retornar o percentual de questões difíceis por Área)
DELIMITER //
CREATE FUNCTION fn_percentual_dificeis_por_area(area_id_param INT)
RETURNS DECIMAL(5, 2)
READS SQL DATA
BEGIN
    DECLARE total_questoes INT;
    DECLARE questoes_dificeis INT;
    DECLARE nivel_dificil_id INT;

    -- Encontra o ID do nível 'Difícil'
    SELECT id_nivel INTO nivel_dificil_id FROM NIVEL WHERE descricao_nivel = 'Difícil' LIMIT 1;

    -- Conta o total de questões na área
    SELECT COUNT(*) INTO total_questoes
    FROM QUESTAO
    WHERE area_id = area_id_param;

    -- Conta as questões difíceis na área
    SELECT COUNT(*) INTO questoes_dificeis
    FROM QUESTAO
    WHERE area_id = area_id_param AND nivel_id = nivel_dificil_id;

    -- Retorna o percentual
    IF total_questoes > 0 THEN
        RETURN (questoes_dificeis / total_questoes) * 100;
    ELSE
        RETURN 0.00;
    END IF;
END;
//
DELIMITER ;

-- Exemplo de uso da FUNCTION: SELECT fn_percentual_dificeis_por_area(1);

-- 3.4. PROCEDURE: Automação de tarefas complexas (criar uma Avaliação, selecionando X questões com filtros)
DELIMITER //
CREATE PROCEDURE sp_criar_avaliacao_filtrada(
    IN p_titulo VARCHAR(255),
    IN p_professor_id INT,
    IN p_area_id INT,
    IN p_nivel_id INT,
    IN p_limite_questoes INT
)
BEGIN
    DECLARE nova_avaliacao_id INT;

    -- 1. Cria a nova avaliação
    INSERT INTO AVALIACAO (titulo, data_aplicacao, professor_id)
    VALUES (p_titulo, CURDATE(), p_professor_id);

    SET nova_avaliacao_id = LAST_INSERT_ID();

    -- 2. Seleciona e insere as questões filtradas
    INSERT INTO AVALIACAO_QUESTAO (avaliacao_id, questao_id)
    SELECT
        nova_avaliacao_id,
        q.id_questao
    FROM
        QUESTAO q
    WHERE
        q.area_id = p_area_id AND q.nivel_id = p_nivel_id
    ORDER BY
        RAND() -- Seleção aleatória
    LIMIT p_limite_questoes;

    -- Retorna o ID da nova avaliação criada
    SELECT nova_avaliacao_id AS id_avaliacao_criada;
END;
//
DELIMITER ;

-- Exemplo de uso da PROCEDURE: CALL sp_criar_avaliacao_filtrada('Avaliação de BD Médio', 1, 1, 2, 2);

-- FIM DO SCRIPT
