CREATE DATABASE IF NOT EXISTS db_usuario;

USE db_usuario;

CREATE TABLE IF NOT EXISTS usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    PRIMARY KEY (id_usuario)
    );
    
CREATE TABLE IF NOT EXISTS telefone(
	id_telefone INT NOT NULL AUTO_INCREMENT,
    telefone VARCHAR(20) NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_telefone),
    CONSTRAINT fk_telefone_usuario
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
