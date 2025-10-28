DESCRIBE autor;

INSERT INTO autor(nome,perfil) VALUES('Leo','Professor Python');
INSERT INTO autor(nome,perfil) VALUES('Daniele','Professora Banco de dados');
INSERT INTO autor(nome,perfil) VALUES('Josias','Professor Java');
INSERT INTO autor(nome,perfil) VALUES('Gabriel','Professor Frontend');
INSERT INTO autor(nome,perfil) VALUES('Abbud','Analista de Requisitos');
INSERT INTO autor (nome, perfil) VALUES ('João Silva', 'Jornalista com 10 anos de experiência em tecnologia e inovação.');
INSERT INTO autor (nome, perfil) VALUES ('Maria Oliveira', 'Repórter especializada em cobertura de eventos culturais e artísticos.');
INSERT INTO autor (nome, perfil) VALUES ('Carlos Pereira', 'Analista de esportes e comentarista com foco em futebol nacional.');

DESCRIBE categoria;

INSERT INTO categoria (nome) VALUES 
('Programação'),
('Banco de Dados'),
('Desenvolvimento Web'),
('Engenharia de Software'),
('Tecnologia'),
('Cultura'),
('Esportes');

DESCRIBE noticia;

INSERT INTO noticia (titulo, conteudo, data_publicacao, destaque, foto, id_autor, id_categoria) VALUES 
('Python para Ciência de Dados: Primeiros Passos', 'O professor Leo ensina como utilizar as bibliotecas Pandas e NumPy para análise de dados.', '2025-10-20 14:10:00', '2', 'python_dados.jpg', 1, 1),
('Modelagem de Dados Relacional vs NoSQL', 'Daniele explora os prós e contras de cada abordagem na construção de um banco de dados eficiente.', '2025-10-19 11:00:00', '1', 'modelagem_db.png', 2, 2),
('Microsserviços com Java e Spring Boot', 'Aprenda com o professor Josias a criar uma arquitetura de microsserviços robusta utilizando o ecossistema Spring.', '2025-10-20 09:00:00', '0', 'java_spring.jpg', 3, 1),
('As Novas Ferramentas para Desenvolvimento Frontend em 2025', 'Gabriel lista os frameworks e bibliotecas que estão em alta no desenvolvimento de interfaces web.', NOW(), '3', 'frontend_tools.jpg', 4, 3),
('A Arte de Levantar Requisitos: Evitando Falhas no Projeto', 'Abbud, Analista de Requisitos, detalha as melhores práticas para entender e documentar as necessidades do cliente.', '2025-10-18 16:45:00', '1', 'requisitos.png', 5, 4),
('Novo Lançamento de Smartphone Agita o Mercado', 'A empresa X lançou hoje seu mais novo modelo, prometendo revolucionar a indústria...', '2025-10-20 10:00:00', '1', 'foto_celular.jpg', 1, 1),
('Exposição de Arte Moderna Abre no Museu Central', 'Uma nova exposição com obras de artistas renomados foi inaugurada nesta manhã...', '2025-10-19 15:30:00', '0', 'foto_museu.jpg', 2, 2),
('Final do Campeonato Terá Jogo Decisivo no Domingo', 'Os times A e B se enfrentarão no próximo domingo para decidir o grande campeão da temporada.', '2025-10-20 14:00:00', '2', 'foto_futebol.jpg', 3, 3),
('Inteligência Artificial Auxilia na Medicina', 'Pesquisadores desenvolvem nova IA capaz de diagnosticar doenças com alta precisão.', NOW(), '3', 'foto_ia_medicina.jpg', 1, 1);





