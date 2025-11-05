-- -- Fase III: Modelo Físico

CREATE DATABASE IF NOT EXISTS DB_imobiliaria_java_home;

Drop database DB_imobiliaria_java_home;

USE DB_imobiliaria_java_home;

CREATE TABLE TIPO_IMOVEL (
    id_tipo INT NOT NULL AUTO_INCREMENT,
    tipo_imovel VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id_tipo)
);

CREATE TABLE BAIRRO (
    id_bairro INT NOT NULL AUTO_INCREMENT,
    nome_bairro VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (id_bairro)
);

CREATE TABLE IMOVEL (
    id_imovel INT NOT NULL AUTO_INCREMENT,
    id_tipo INT NOT NULL,
    id_bairro INT NOT NULL,
    quartos TINYINT NOT NULL,
    vagas TINYINT NOT NULL,
    suites TINYINT NOT NULL,
    area SMALLINT NOT NULL,
    valor DECIMAL(12, 2) NOT NULL,
    condominio DECIMAL(12, 2) NULL,
    iptu DECIMAL(10, 2) NULL,
    PRIMARY KEY (id_imovel),
    FOREIGN KEY (id_tipo) REFERENCES TIPO_IMOVEL(id_tipo),
    FOREIGN KEY (id_bairro) REFERENCES BAIRRO(id_bairro)
);