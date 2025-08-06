/* modelo lógico: */
CREATE DATABASE db_jkalango;
USE db_jkalango;

CREATE TABLE IF NOT EXISTS jogo (
    id INTEGER PRIMARY KEY auto_increment,
	nome VARCHAR(60) NOT NULL,
	foto VARCHAR(80) NOT NULL,
    descricao VARCHAR(60) NOT NULL,
    fk_genero_id INTEGER,
    fk_criador_id INTEGER
);

CREATE TABLE IF NOT EXISTS genero (
    id INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS criador (
    id INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(60) NOT NULL,
    email VARCHAR(60) NOT NULL,
    senha VARCHAR(60) NOT NULL
);
 
ALTER TABLE jogo ADD CONSTRAINT FK_jogo_2
    FOREIGN KEY (fk_genero_id)
    REFERENCES genero (id)
    ON DELETE CASCADE;
 
ALTER TABLE jogo ADD CONSTRAINT FK_jogo_3
    FOREIGN KEY (fk_criador_id)
    REFERENCES criador (id)
    ON DELETE CASCADE;