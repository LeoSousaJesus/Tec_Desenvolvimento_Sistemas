CREATE DATABASE IF NOT EXISTS sindcode;
USE sindcode;
show databases;
-- DROP DATABASE sindicode;
/*
  use o drop com muita cautela
*/
CREATE TABLE autor(   
   id INT PRIMARY KEY auto_increment,
   nome VARCHAR(80) NOT NULL,
   perfil TEXT NOT NULL
);
show tables;
CREATE TABLE categoria(
   id INT PRIMARY KEY auto_increment,
   nome VARCHAR(80) NOT NULL
);
CREATE TABLE noticia(
   id INT PRIMARY KEY auto_increment,
   titulo VARCHAR(90) NOT NULL,
   conteudo TEXT NOT NULL,
   data_publicacao DATETIME NOT NULL,
   destaque enum('0','1','2','3','4') NOT NULL DEFAULT '0',
   foto VARCHAR(60) NOT NULL,
   id_autor INT NOT NULL,
   id_categoria INT NOT NULL,   
   -- Restrições de Chave Estrangeira
   CONSTRAINT FK_Noticia_Autor
        FOREIGN KEY (id_autor)
        REFERENCES autor(id),
    CONSTRAINT FK_Noticia_Categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id)     
);