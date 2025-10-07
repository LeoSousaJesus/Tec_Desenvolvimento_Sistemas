USE db_usuario;

CREATE TABLE IF NOT EXISTS endereco(
	id_endereco INT NOT NULL AUTO_INCREMENT,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_endereco)
);

DROP TABLE IF EXISTS usuario;


-- Comandos que funcionam / Permissões do usuario 

SELECT * FROM usuario;


INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Leandro",
    "Sousa",
    "leosousa@email.com",
    "012.987.456-50");
    
INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Ana", 
    "Silva", 
    "ana.silva@email.com", 
    "123.456.789-01");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Bruno", 
    "Oliveira", 
    "bruno.oliveira@email.com", 
    "234.567.890-12");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Carla", 
    "Souza", 
    "carla.souza@email.com", 
    "345.678.901-23");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Daniel", 
    "Pereira", 
    "daniel.pereira@email.com", 
    "456.789.012-34");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Eduarda", 
    "Costa", 
    "eduarda.costa@email.com", 
    "567.890.123-45");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Felipe", 
    "Almeida", 
    "felipe.almeida@email.com", 
    "678.901.234-56");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Gabriela", 
    "Ferreira", 
    "gabriela.ferreira@email.com", 
    "789.012.345-67");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Henrique", 
    "Rodrigues", 
    "henrique.rodrigues@email.com", 
    "890.123.456-78");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Isabela", 
    "Martins", 
    "isabela.martins@email.com", 
    "901.234.567-89");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"João", 
    "Lima", 
    "joao.lima@email.com", 
    "012.345.678-90");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Karen", 
    "Barbosa", 
    "karen.barbosa@email.com", 
    "111.222.333-44");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Lucas", 
    "Ribeiro", 
    "lucas.ribeiro@email.com", 
    "222.333.444-55");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Mariana", 
    "Gomes", 
    "mariana.gomes@email.com", 
    "333.444.555-66");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Nicolas", 
    "Carvalho", 
    "nicolas.carvalho@email.com", 
    "444.555.666-77");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Olivia", 
    "Araujo", 
    "olivia.araujo@email.com", 
    "555.666.777-88");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Paulo", 
    "Melo", 
    "paulo.melo@email.com", 
    "666.777.888-99");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Quésia", 
    "Teixeira", 
    "quesia.teixeira@email.com", 
    "777.888.999-00");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Rafael", 
    "Rocha", 
    "rafael.rocha@email.com", 
    "888.999.000-11");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Sabrina", 
    "Dias", 
    "sabrina.dias@email.com", 
    "999.000.111-22");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Thiago", 
    "Moura", 
    "thiago.moura@email.com", 
    "000.111.222-33");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Ursula", 
    "Batista", 
    "ursula.batista@email.com",
    "101.202.303-44");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Vitor", 
    "Campos", 
    "vitor.campos@email.com", 
    "202.303.404-55");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Wesley", 
    "Peixoto", 
    "wesley.peixoto@email.com", 
    "303.404.505-66");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Xuxa", 
    "Assis", 
    "xuxa.assis@email.com",
    "404.505.606-77");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Yasmin", 
    "Farias", 
    "yasmin.farias@email.com", 
    "505.606.707-88");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Zeca", 
    "Nunes", 
    "zeca.nunes@email.com", 
    "606.707.808-99");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Arthur", 
    "Vieira", 
    "arthur.vieira@email.com", 
    "707.808.909-00");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Beatriz", 
    "Monteiro", 
    "beatriz.monteiro@email.com", 
    "808.909.010-11");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Caio", 
    "Pinto", 
    "caio.pinto@email.com", 
    "909.010.121-22");

INSERT INTO usuario (nome, sobrenome, email, cpf) VALUES (
	"Diana", 
	"Rezende", 
    "diana.rezende@email.com", 
    "010.121.232-33");




