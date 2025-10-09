CREATE DATABASE IF NOT EXISTS robotsenai;
USE robotsenai;

CREATE TABLE IF NOT EXISTS robo(
  id int primary key auto_increment,
  nome varchar(60) NOT NULL,
  tecnologia TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS obstaculo(
   id int primary key auto_increment,
   idrobo int NOT NULL,
   data_hora_registro datetime
);

ALTER TABLE obstaculo
ADD CONSTRAINT fk_robo_obstaculo
FOREIGN KEY (idrobo)
REFERENCES robo(id);

-- Inserindo dados na tabela robo (se não existirem)
INSERT INTO robo (nome, tecnologia) VALUES ('Robô Alpha', 'Visão Computacional e Aprendizado de Máquina');
INSERT INTO robo (nome, tecnologia) VALUES ('Robô Beta', 'Sensores Ultrassônicos e Navegação Autônoma');
INSERT INTO robo (nome, tecnologia) VALUES ('Robô Gamma', 'Manipulador de 6 Eixos e Controle por Força');

-- Inserção de dados de obstáculos (gerados dinamicamente)
-- TRUNCATE TABLE obstaculo; -- Descomente para limpar dados existentes antes de inserir novos

-- Dados de obstáculos gerados:
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-05-19 16:43:59');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-08-23 02:14:18');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2025-04-17 09:04:21');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-06-19 01:20:28');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2025-06-23 06:04:11');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2024-12-25 11:51:52');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-05-15 10:01:30');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2025-04-27 07:56:47');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2025-04-05 23:21:52');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2025-02-28 07:47:21');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-01-10 13:36:23');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-04-19 23:54:18');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-07-26 12:10:51');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-01-15 13:47:48');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-06-19 15:37:28');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (3, '2025-06-04 06:16:10');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-08-30 13:36:14');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2025-08-02 18:57:56');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (1, '2024-12-22 17:18:33');
INSERT INTO obstaculo (idrobo, data_hora_registro) VALUES (2, '2024-12-18 14:33:44');

-- VIEW que mostra o nome do robo e data/hora no intervalo de dezembro a fevereiro
CREATE OR REPLACE VIEW vw_obstaculos_dez_fev AS
SELECT
    r.nome AS Nome_Robo,
    o.data_hora_registro AS Data_Hora_Obstaculo
FROM
    robo r
INNER JOIN
    obstaculo o ON r.id = o.idrobo
WHERE
    MONTH(o.data_hora_registro) IN (12, 1, 2)
ORDER BY
    o.data_hora_registro;

-- VIEW que mostra a quantidade de robos cadastrados
CREATE OR REPLACE VIEW vw_quantidade_robos AS
SELECT
    COUNT(id) AS Quantidade_Robos
FROM
    robo;

-- VIEW que mostra a quantidade de obstaculos encontrados
CREATE OR REPLACE VIEW vw_quantidade_obstaculos AS
SELECT
    COUNT(id) AS Quantidade_Obstaculos
FROM
    obstaculo;

-- VIEW que mostra apenas os robos que tiveram obstaculos a partir de 14:00
CREATE OR REPLACE VIEW vw_robos_obstaculos_apos_14h AS
SELECT DISTINCT
    r.nome AS Nome_Robo
FROM
    robo r
INNER JOIN
    obstaculo o ON r.id = o.idrobo
WHERE
    TIME(o.data_hora_registro) >= '14:00:00'
ORDER BY
    r.nome;

-- VIEW que mostra os obstaculos e os nomes dos robos que tiveram obstaculos de 9:00 A 13:50
CREATE OR REPLACE VIEW vw_obstaculos_robos_09h_13h50 AS
SELECT
    r.nome AS Nome_Robo,
    o.data_hora_registro AS Data_Hora_Obstaculo
FROM
    robo r
INNER JOIN
    obstaculo o ON r.id = o.idrobo
WHERE
    TIME(o.data_hora_registro) >= '09:00:00' AND TIME(o.data_hora_registro) <= '13:50:00'
ORDER BY
    o.data_hora_registro;

-- VIEW que mostra os robos que tiveram obstaculos de 13/09 a 30/09 de 2025
CREATE OR REPLACE VIEW vw_robos_obstaculos_setembro_2025 AS
SELECT DISTINCT
    r.nome AS Nome_Robo
FROM
    robo r
INNER JOIN
    obstaculo o ON r.id = o.idrobo
WHERE
    o.data_hora_registro >= '2025-09-13 00:00:00' AND o.data_hora_registro <= '2025-09-30 23:59:59'
ORDER BY
    r.nome;

-- VIEW que mostra os robos que tiveram obstaculos uma semana antes da data atual
CREATE OR REPLACE VIEW vw_robos_obstaculos_ultima_semana AS
SELECT DISTINCT
    r.nome AS Nome_Robo
FROM
    robo r
INNER JOIN
    obstaculo o ON r.id = o.idrobo
WHERE
    o.data_hora_registro >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
ORDER BY
    r.nome;
    
    
SELECT * FROM vw_obstaculos_dez_fev;

SELECT * FROM vw_quantidade_robos;

SELECT * FROM vw_quantidade_obstaculos;

SELECT * FROM vw_robos_obstaculos_apos_14h;

SELECT * FROM vw_obstaculos_robos_09h_13h50;

SELECT * FROM vw_robos_obstaculos_setembro_2025;

SELECT * FROM vw_robos_obstaculos_ultima_semana;




  
    

