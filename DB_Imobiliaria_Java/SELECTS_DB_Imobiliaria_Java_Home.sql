-- Ver todos os imóveis cadastrados
SELECT * FROM imovel;

-- Ver todos os bairros
SELECT * FROM bairro;

-- Ver imóveis com valor de aluguel abaixo de R$ 3000,00
SELECT * FROM imovel WHERE valor < 3000.00;

-- Ver imóveis que tenham pelo menos 3 quartos E 2 vagas
SELECT * FROM imovel WHERE quartos >= 3 AND vagas >= 2;

-- Selecionar imóveis mostrando o NOME do tipo e o NOME do bairro
SELECT 
    i.id_imovel,
    t.nome AS tipo_imovel,
    b.nome AS bairro,
    i.quartos,
    i.valor,
    i.condominio
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro;

-- Encontrar todos os 'Apartamentos' na 'Asa Sul'
SELECT 
    i.*
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro
WHERE 
    t.nome = 'Apartamento' AND b.nome = 'Copacabana';


-- Contar quantos imóveis existem em CADA bairro
SELECT 
    b.nome AS bairro,
    COUNT(i.id_imovel) AS total_de_imoveis
FROM 
    imovel AS i
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro
GROUP BY 
    b.nome
ORDER BY
    total_de_imoveis DESC;

-- Calcular o valor médio do aluguel por TIPO de imóvel
SELECT 
    t.nome AS tipo,
    AVG(i.valor) AS media_aluguel
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
GROUP BY 
    t.nome;

-- Calcular o custo mensal total (Aluguel + Condomínio + IPTU) para imóveis em Águas Claras
SELECT 
    i.id_imovel,
    (i.valor + i.condominio + i.iptu) AS custo_total_mensal
FROM 
    imovel AS i
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro
WHERE 
    b.nome = 'Copacabana';
    
    
-- Aumentar o valor de todos os apartamentos em 10%
UPDATE imovel
SET valor = valor * 1.10
WHERE id_tipo = (SELECT id_tipo FROM tipo WHERE nome = 'Apartamento');

-- Mudar o nome do bairro 'Taguatinga' para 'Taguatinga Centro'
UPDATE bairro
SET nome = 'Flamengo'
WHERE nome = 'Fla Centro';


-- Encontrar imóveis em uma FAIXA de preço específica (ex: entre 2000 e 3000)
SELECT * FROM imovel
WHERE valor BETWEEN 2000.00 AND 3000.00;

-- Encontrar imóveis que estejam em uma LISTA de bairros (ex: Asa Norte ou Águas Claras)
-- (Usando JOIN para pegar os nomes)
SELECT 
    i.id_imovel,
    b.nome AS bairro,
    i.valor
FROM 
    imovel AS i
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro
WHERE 
    b.nome IN ('Copacabana', 'Fla Centro');

-- Encontrar bairros que comecem com a letra "A"
SELECT * FROM bairro
WHERE nome LIKE 'A%';

-- Encontrar imóveis onde o IPTU não foi cadastrado (é nulo)
-- (Para este exemplo funcionar, teríamos que ter inserido um dado com IPTU NULL)
SELECT *
FROM imovel
WHERE iptu IS NULL;

