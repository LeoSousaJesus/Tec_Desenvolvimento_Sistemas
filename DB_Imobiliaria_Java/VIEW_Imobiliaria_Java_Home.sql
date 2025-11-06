SELECT 
    i.id_imovel,
    t.nome AS tipo_imovel,  -- Traz o nome do tipo
    b.nome AS bairro,         -- Traz o nome do bairro
    i.quartos,
    i.vagas,
    i.suites,
    i.area,
    i.valor,
    i.condominio,
    i.iptu,
    -- Vamos adicionar a função que criamos em outra conversa
    (i.valor + COALESCE(i.condominio, 0) + COALESCE(i.iptu, 0)) AS custo_total_estimado
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro;
    
    
CREATE VIEW vw_ImoveisDetalhados AS
SELECT 
    i.id_imovel,
    t.nome AS tipo_imovel,
    b.nome AS bairro,
    i.quartos,
    i.vagas,
    i.suites,
    i.area,
    i.valor,
    i.condominio,
    i.iptu,
    (i.valor + COALESCE(i.condominio, 0) + COALESCE(i.iptu, 0)) AS custo_total_estimado
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro;
    
    
-- Para ver TODOS os imóveis detalhados
SELECT * FROM vw_ImoveisDetalhados;

-- Para encontrar Apartamentos em Águas Claras com custo total abaixo de 4000
SELECT * FROM vw_ImoveisDetalhados
WHERE 
    tipo_imovel = 'Apartamento' 
    AND bairro = 'Águas Claras'
    AND custo_total_estimado < 4000.00;

-- Para ver o número de imóveis por bairro (agora usando a VIEW)
SELECT 
    bairro,
    COUNT(id_imovel) AS quantidade
FROM 
    vw_ImoveisDetalhados
GROUP BY 
    bairro;
    

-- Cria uma VIEW que mostra o resumo de preços por bairro e tipo
CREATE VIEW vw_ResumoPrecos AS
SELECT 
    b.nome AS bairro,
    t.nome AS tipo,
    COUNT(i.id_imovel) AS quantidade,
    AVG(i.valor) AS media_aluguel,
    MIN(i.valor) AS menor_aluguel,
    MAX(i.valor) AS maior_aluguel
FROM 
    imovel AS i
JOIN 
    tipo AS t ON i.id_tipo = t.id_tipo
JOIN 
    bairro AS b ON i.id_bairro = b.id_bairro
GROUP BY
    b.nome,
    t.nome;
    

-- Consulta simples para ver o resumo de preços
SELECT * FROM vw_ResumoPrecos
WHERE bairro = 'Benfica';