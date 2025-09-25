/* LMS_Lógico: */
CREATE DATABASE LMS;
USE LMS;

CREATE TABLE IF NOT exists categoria (
    id INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT exists curso (
    id INTEGER PRIMARY KEY,
    curso_nome VARCHAR(60) NOT NULL,
    competencias TEXT NOT NULL,
    pre_requisito VARCHAR(60) NOT NULL,
    carga_horaria INTEGER NOT NULL,
    ultima_atualizacao DATE NOT NULL,
    avaliacao INTEGER NOT NULL,
    num_alunos INTEGER NOT NULL,
    nota_acessibilidade INTEGER NOT NULL,
    fk_categoria_id INTEGER
);
 
ALTER TABLE curso ADD CONSTRAINT FK_curso_2
    FOREIGN KEY (fk_categoria_id)
    REFERENCES categoria (id)
    ON DELETE CASCADE;
    
    
INSERT INTO categoria(nome) VALUES ('fundamentos de python');
INSERT INTO categoria(nome) VALUES ('estruturando aplicações web');
INSERT INTO categoria(nome) VALUES ('segurança, qualidade, escalabilidade');
INSERT INTO categoria(nome) VALUES ('aplicações mobile');

SELECT * FROM categoria;
SELECT * FROM categoria WHERE id=1;
SELECT * FROM categoria WHERE nome LIKE '%aplic%';

