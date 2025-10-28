CREATE DATABASE IF NOT EXISTS sindcodev4;

USE sindcodev4;

CREATE TABLE IF NOT EXISTS beneficio( 
	id_beneficio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	descricao TEXT NOT NULL,	
	data_inicio DATE NOT NULL,
	data_fim DATE,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,		
	publico_alvo VARCHAR(100),	
	valor_subsidiado DECIMAL(10,2),
	valor_total DECIMAL(10,2),
	url_imagem VARCHAR(255),
	criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
	atualizado_em DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS associado(
	id_associado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    rg VARCHAR(30),
    nome_completo VARCHAR(100) NOT NULL,
    nome_social VARCHAR(40),
    genero VARCHAR(1),
    data_nascimento DATE NOT NULL,
    fk_beneficio INT NOT NULL,
    CONSTRAINT fk_associado_beneficio FOREIGN KEY(fk_beneficio) REFERENCES beneficio(id_beneficio)
);

CREATE TABLE IF NOT EXISTS autor(
	id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    perfil TEXT	NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS endereco(
	id_endereco INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cep VARCHAR(15) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    complemento VARCHAR(100),
    numero VARCHAR(20),
    cidade VARCHAR(80) NOT NULL,
    bairro VARCHAR(80) NOT NULL,
    estado VARCHAR(80) NOT NULL,
    uf VARCHAR(2) NOT NULL,
	fk_autor INT NOT NULL,
	fk_associado INT NOT NULL,	
	CONSTRAINT fk_endereco_autor FOREIGN KEY(fk_autor) REFERENCES autor(id_autor),
	CONSTRAINT fk_endereco_associado FOREIGN KEY(fk_associado) REFERENCES associado(id_associado)
);

CREATE TABLE IF NOT EXISTS categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS noticia(
	id_noticia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    conteudo TEXT NOT NULL,
    data_publicacao DATE NOT NULL,
    url_imagem_capa VARCHAR(100),
    destaque ENUM('nenhum','baixo','medio','alto','maximo') NOT NULL DEFAULT 'nenhum',
    fk_autor INT NOT NULL,
    fk_categoria INT NOT NULL,
    CONSTRAINT fk_noticia_autor FOREIGN KEY(fk_autor) REFERENCES autor(id_autor),
    CONSTRAINT fk_noticia_categoria FOREIGN KEY(fk_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS telefone(
	id_telefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(20),
    fk_associado INT NOT NULL,
	fk_autor INT NOT NULL,	
    CONSTRAINT fk_telefone_associado FOREIGN KEY(fk_associado) REFERENCES associado(id_associado),
	CONSTRAINT fk_telefone_autor FOREIGN KEY(fk_autor) REFERENCES autor(id_autor)
);

CREATE TABLE IF NOT EXISTS email(
	id_email INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    fk_associado INT NOT NULL,
	fk_autor INT NOT NULL,
	CHECK (fk_autor IS NOT NULL OR fk_associado IS NOT NULL),
    CONSTRAINT fk_email_associado FOREIGN KEY(fk_associado) REFERENCES associado(id_associado),
	CONSTRAINT fk_email_autor FOREIGN KEY(fk_autor) REFERENCES autor(id_autor)
);

CREATE TABLE IF NOT EXISTS tipo_beneficio(
	id_tipo_beneficio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_beneficio VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    fk_beneficio INT NOT NULL,
    CONSTRAINT fk_tipo_beneficio_beneficio FOREIGN KEY(fk_beneficio) REFERENCES beneficio(id_beneficio)
);

CREATE TABLE IF NOT EXISTS gestor_beneficio(
	id_gestor_beneficio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(20) NOT NULL UNIQUE,
    ie VARCHAR(20),
    nome VARCHAR(100) NOT NULL,
    fantasia VARCHAR(50),
    contato VARCHAR(50),
	email VARCHAR(100) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
	fk_telefone INT NOT NULL,
	fk_endereco INT NOT NULL,
    CONSTRAINT fk_gestor_beneficio_telefone FOREIGN KEY(fk_telefone) REFERENCES telefone(id_telefone),
    CONSTRAINT fk_gestor_beneficio_endereco FOREIGN KEY(fk_endereco) REFERENCES endereco(id_endereco)
);

ALTER TABLE telefone MODIFY COLUMN fk_associado INT NULL;
ALTER TABLE telefone MODIFY COLUMN fk_autor INT NULL;

-- Tabela email
ALTER TABLE email MODIFY COLUMN fk_associado INT NULL;
ALTER TABLE email MODIFY COLUMN fk_autor INT NULL;

-- Tabela endereco
ALTER TABLE endereco MODIFY COLUMN fk_associado INT NULL;
ALTER TABLE endereco MODIFY COLUMN fk_autor INT NULL;


