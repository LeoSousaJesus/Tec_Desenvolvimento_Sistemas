
-- 1. INSERTS para a tabela 'beneficio' (10 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO beneficio (nome, descricao, data_inicio, data_fim, ativo, publico_alvo, valor_subsidiado, valor_total, url_imagem) VALUES
('Plano de Saúde Familiar', 'Cobertura completa para consultas, exames e internações.', '2024-01-01', '2025-12-31', TRUE, 'Todos os Associados', 150.00, 300.00, 'saude_familiar.jpg'),
('Convênio Odontológico', 'Tratamentos dentários básicos e especializados.', '2024-03-01', NULL, TRUE, 'Associados e Dependentes', 50.00, 100.00, 'odonto.jpg'),
('Desconto em Farmácias', 'Descontos de até 30% em medicamentos.', '2023-11-01', NULL, TRUE, 'Todos os Associados', 0.00, 0.00, 'farmacia.jpg'),
('Auxílio Educação', 'Bolsas de estudo para cursos técnicos e superiores.', '2024-07-01', '2025-07-01', TRUE, 'Associados com filhos', 500.00, 1000.00, 'educacao.jpg'),
('Clube de Vantagens', 'Acesso a descontos em lojas e serviços parceiros.', '2024-01-01', NULL, TRUE, 'Todos os Associados', 0.00, 0.00, 'vantagens.jpg'),
('Apoio Jurídico', 'Consultoria e representação legal em causas trabalhistas.', '2024-02-15', NULL, TRUE, 'Associados em litígio', 0.00, 0.00, 'juridico.jpg'),
('Seguro de Vida', 'Cobertura em caso de morte ou invalidez.', '2024-04-01', NULL, TRUE, 'Todos os Associados', 20.00, 40.00, 'seguro_vida.jpg'),
('Colônia de Férias', 'Desconto em hospedagem em colônias de férias do sindicato.', '2024-12-01', '2025-02-28', FALSE, 'Famílias Associadas', 100.00, 250.00, 'ferias.jpg'),
('Cursos Profissionalizantes', 'Acesso gratuito a cursos de aperfeiçoamento profissional.', '2024-09-01', NULL, TRUE, 'Associados Ativos', 0.00, 0.00, 'cursos.jpg'),
('Assistência Funeral', 'Cobertura completa para serviços funerários.', '2024-06-01', NULL, TRUE, 'Todos os Associados', 10.00, 20.00, 'funeral.jpg');

-- ------------------------------------------------------------------
-- 2. INSERTS para a tabela 'autor' (5 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO autor (nome, perfil, ativo) VALUES
('Ana Paula Silva', 'Jornalista especializada em relações sindicais.', TRUE),
('Bruno Costa', 'Analista de comunicação e editor de conteúdo.', TRUE),
('Carla Oliveira', 'Redatora e especialista em benefícios sociais.', TRUE),
('Daniel Mendes', 'Estudante de jornalismo e estagiário.', TRUE),
('Elena Rodrigues', 'Diretora de comunicação do Sindicato.', TRUE);

-- ------------------------------------------------------------------
-- 3. INSERTS para a tabela 'categoria' (5 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO categoria (nome, ativo) VALUES
('Notícias Gerais', TRUE),
('Benefícios', TRUE),
('Eventos', TRUE),
('Jurídico', TRUE),
('Saúde e Bem-Estar', TRUE);

-- ------------------------------------------------------------------
-- 4. INSERTS para a tabela 'associado' (10 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO associado (cpf, rg, nome_completo, nome_social, genero, data_nascimento, fk_beneficio) VALUES
('111.111.111-11', '11.111.111-1', 'João da Silva', NULL, 'M', '1980-05-20', 1),
('222.222.222-22', '22.222.222-2', 'Maria Souza', 'Marília', 'F', '1992-11-10', 2),
('333.333.333-33', '33.333.333-3', 'Pedro Santos', NULL, 'M', '1975-01-01', 3),
('444.444.444-44', '44.444.444-4', 'Ana Pereira', NULL, 'F', '2000-03-15', 4),
('555.555.555-55', '55.555.555-5', 'Lucas Almeida', NULL, 'M', '1988-07-25', 5),
('666.666.666-66', '66.666.666-6', 'Juliana Lima', NULL, 'F', '1995-09-30', 6),
('777.777.777-77', '77.777.777-7', 'Rafael Oliveira', NULL, 'M', '1970-12-05', 7),
('888.888.888-88', '88.888.888-8', 'Fernanda Rocha', 'Fê', 'F', '1985-02-14', 8),
('999.999.999-99', '99.999.999-9', 'Gustavo Vieira', NULL, 'M', '1998-04-03', 9),
('000.000.000-00', '00.000.000-0', 'Patrícia Gomes', NULL, 'F', '1979-06-18', 10);

-- ------------------------------------------------------------------
-- 5. INSERTS para a tabela 'tipo_beneficio' (5 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO tipo_beneficio (tipo_beneficio, ativo, fk_beneficio) VALUES
('Saúde', TRUE, 1),
('Odontológico', TRUE, 2),
('Financeiro', TRUE, 3),
('Educacional', TRUE, 4),
('Lazer', TRUE, 5);

-- ------------------------------------------------------------------
-- 6. INSERTS para a tabela 'noticia' (5 INSERTS)
-- ------------------------------------------------------------------
INSERT INTO noticia (titulo, conteudo, data_publicacao, url_imagem_capa, destaque, fk_autor, fk_categoria) VALUES
('Reajuste Salarial Aprovado', 'Após longas negociações, o reajuste salarial de 5% foi aprovado para a categoria.', '2025-10-25', 'reajuste_capa.jpg', 'maximo', 1, 1),
('Novos Benefícios de Saúde', 'Conheça os detalhes do novo plano de saúde oferecido aos associados.', '2025-10-20', 'saude_capa.jpg', 'alto', 3, 2),
('Assembleia Geral Extraordinária', 'Convocação para a AGE que discutirá a nova sede do sindicato.', '2025-10-18', 'age_capa.jpg', 'medio', 5, 3),
('Direitos Trabalhistas em Foco', 'Artigo sobre as recentes mudanças na legislação trabalhista brasileira.', '2025-10-10', 'juridico_capa.jpg', 'baixo', 2, 4),
('Dicas para uma Vida Saudável', 'Guia prático com dicas de alimentação e exercícios para o associado.', '2025-10-05', 'bemestar_capa.jpg', 'nenhum', 4, 5);

-- ------------------------------------------------------------------
-- 7. INSERTS para a tabela 'telefone' (5 INSERTS)
-- ------------------------------------------------------------------
-- 3 telefones para associados e 2 para autores
INSERT INTO telefone (telefone, fk_associado, fk_autor) VALUES
('(11) 98765-4321', 1, 1), -- Associado 1
('(21) 91234-5678', 2, 2), -- Associado 2
('(31) 90000-1111', 3, 3), -- Associado 3
('(11) 3333-4444', 4, 4), -- Autor 1
('(21) 2222-3333', 5, 5); -- Autor 2

-- ------------------------------------------------------------------
-- 8. INSERTS para a tabela 'email' (5 INSERTS)
-- ------------------------------------------------------------------
-- 3 emails para associados e 2 para autores
INSERT INTO email (email, fk_associado, fk_autor) VALUES
('joao.silva@email.com', 1, 1), -- Associado 1
('maria.souza@email.com', 2, 2), -- Associado 2
('pedro.santos@email.com', 3, 3), -- Associado 3
('ana.paula@sindicato.com', 4, 4), -- Autor 1
('bruno.costa@sindicato.com', 5, 5); -- Autor 2

-- ------------------------------------------------------------------
-- 9. INSERTS para a tabela 'endereco' (5 INSERTS)
-- ------------------------------------------------------------------
-- 3 endereços para associados e 2 para autores
INSERT INTO endereco (cep, logradouro, complemento, numero, cidade, bairro, estado, uf, fk_autor, fk_associado) VALUES
('01001-000', 'Praça da Sé', 'Apto 101', '100', 'São Paulo', 'Sé', 'São Paulo', 'SP', 1, 1), -- Associado 1
('20040-000', 'Rua da Assembleia', NULL, '50', 'Rio de Janeiro', 'Centro', 'Rio de Janeiro', 'RJ', 2, 2), -- Associado 2
('30130-000', 'Avenida Afonso Pena', 'Sala 5', '1500', 'Belo Horizonte', 'Centro', 'Minas Gerais', 'MG', 3, 3), -- Associado 3
('70040-900', 'Eixo Monumental', 'Bloco A', '1', 'Brasília', 'Zona Cívico-Administrativa', 'Distrito Federal', 'DF', 4, 4), -- Autor 1
('04538-132', 'Rua Tabapuã', 'Escritório 3', '800', 'São Paulo', 'Itaim Bibi', 'São Paulo', 'SP', 5, 5); -- Autor 2

-- ------------------------------------------------------------------
-- 10. INSERTS para a tabela 'gestor_beneficio' (5 INSERTS)
-- ------------------------------------------------------------------
-- Requer fk_telefone e fk_endereco. Usaremos os últimos 5 INSERTS de telefone e endereco.
-- Os IDs de telefone e endereço devem ser sequenciais (1 a 5, respectivamente),
-- mas como a tabela 'telefone' e 'endereco' foram populadas com 5 registros cada,
-- os IDs de 1 a 5 devem ser seguros para usar aqui.
INSERT INTO gestor_beneficio (cnpj, ie, nome, fantasia, contato, email, fk_telefone, fk_endereco) VALUES
('12.345.678/0001-00', '123.456.789.111', 'Saúde Total Ltda.', 'Saúde Total', 'Dr. Alberto', 'contato@saudetotal.com.br', 1, 1), -- Telefone 4, Endereço 4 (Autor 1)
('98.765.432/0001-00', '987.654.321.000', 'Odonto Prime S.A.', 'Odonto Prime', 'Dra. Beatriz', 'contato@odontoprime.com.br', 2, 2), -- Telefone 5, Endereço 5 (Autor 2)
('11.222.333/0001-00', '111.222.333.444', 'Drogaria Popular', 'Droga Pop', 'Setor Comercial', 'comercial@drogariapopular.com.br', 3, 3), -- Telefone 1, Endereço 1 (Associado 1)
('44.555.666/0001-00', '444.555.666.777', 'Instituto Saber', 'Saber Mais', 'Coordenação', 'coord@institutosaber.edu.br', 4, 4), -- Telefone 2, Endereço 2 (Associado 2)
('77.888.999/0001-00', '777.888.999.000', 'Clube Lazer', 'CL Vantagens', 'Marketing', 'marketing@clubelazer.com', 5, 5); -- Telefone 3, Endereço 3 (Associado 3)

-- ------------------------------------------------------------------
-- TOTAL DE INSERTS: 10 + 5 + 5 + 10 + 5 + 5 + 5 + 5 + 5 + 5 = 50 INSERTS
-- ------------------------------------------------------------------
