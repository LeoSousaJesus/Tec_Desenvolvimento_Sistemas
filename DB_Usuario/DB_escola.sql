CREATE DATABASE IF NOT EXISTS db_escola;

USE db_escola;

CREATE TABLE IF NOT EXISTS aluno(
    matricula_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cpf VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS curso(
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    duracao INT NOT NULL
);

CREATE TABLE IF NOT EXISTS turno(
    id_turno INT PRIMARY KEY AUTO_INCREMENT,
    turno VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS professor(
    matricula_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS telefone_professor(
    id_telefone_professor INT PRIMARY KEY AUTO_INCREMENT,
    telefone_professor VARCHAR(20),
    professor_matricula_professor INT NOT NULL,
    CONSTRAINT fk_professor_matricula_professor FOREIGN KEY (professor_matricula_professor) REFERENCES professor(matricula_professor)
);

CREATE TABLE IF NOT EXISTS turma(
    cod_turma INT PRIMARY KEY AUTO_INCREMENT,
    qtde_alunos INT,
    data_inicio DATE,
    data_termino DATE,
    curso_id_curso INT NOT NULL,
    turno_id_turno INT NOT NULL,
    CONSTRAINT fk_curso_id_curso FOREIGN KEY (curso_id_curso) REFERENCES curso(id_curso),
    CONSTRAINT fk_turno_id_turno FOREIGN KEY (turno_id_turno) REFERENCES turno(id_turno)
);

CREATE TABLE IF NOT EXISTS aluno_has_turma(
    id_aluno_has_turma INT PRIMARY KEY AUTO_INCREMENT,
    aluno_matricula_aluno INT NOT NULL,
    turma_cod_turma INT NOT NULL,
    UNIQUE KEY ux_aluno_has_turma_aluno_turma (aluno_matricula_aluno, turma_cod_turma),
    CONSTRAINT fk_aluno_has_turma_aluno FOREIGN KEY (aluno_matricula_aluno) REFERENCES aluno(matricula_aluno),
    CONSTRAINT fk_aluno_has_turma_turma FOREIGN KEY (turma_cod_turma) REFERENCES turma(cod_turma)
);

CREATE TABLE IF NOT EXISTS professor_has_turma(
    id_professor_has_turma INT PRIMARY KEY AUTO_INCREMENT,
    professor_matricula_professor INT NOT NULL,
    turma_cod_turma INT NOT NULL,
    UNIQUE KEY ux_professor_has_turma_professor_turma (professor_matricula_professor, turma_cod_turma),
    CONSTRAINT fk_professor_has_turma_professor FOREIGN KEY (professor_matricula_professor) REFERENCES professor(matricula_professor),
    CONSTRAINT fk_professor_has_turma_turma FOREIGN KEY (turma_cod_turma) REFERENCES turma(cod_turma)
);

CREATE TABLE IF NOT EXISTS estado(
    id_estado INT PRIMARY KEY AUTO_INCREMENT,
    estado CHAR(2)
);

CREATE TABLE IF NOT EXISTS municipio(
    id_municipio INT PRIMARY KEY AUTO_INCREMENT,
    municipio VARCHAR(45),
    estado_id_estado INT NOT NULL,
    CONSTRAINT fk_municipio_estado FOREIGN KEY (estado_id_estado) REFERENCES estado(id_estado)
);

CREATE TABLE IF NOT EXISTS endereco(
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    cep VARCHAR(10),
    bairro VARCHAR(255),
    complemento VARCHAR(255),
    numero VARCHAR(10),
    estado_id_estado INT,
    CONSTRAINT fk_endereco_estado FOREIGN KEY (estado_id_estado) REFERENCES estado(id_estado)
);




