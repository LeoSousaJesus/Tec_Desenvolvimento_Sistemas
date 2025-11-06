DELIMITER $$

CREATE FUNCTION fn_ObterNomeBairro(p_id_bairro INT)
RETURNS VARCHAR(150) -- Deve ser o mesmo tipo da coluna 'nome' em 'bairro'
READS SQL DATA
BEGIN
    DECLARE v_nome_bairro VARCHAR(150);
    
    -- Busca o nome na tabela 'bairro' e armazena na variável
    SELECT nome
    INTO v_nome_bairro
    FROM bairro
    WHERE id_bairro = p_id_bairro;
    
    RETURN v_nome_bairro;
END$$

DELIMITER ;

-- 1. Usando a Função de CÁLCULO (fn_CalcularCustoTotal)
--    Note como ela se torna uma nova coluna "custo_total"
SELECT 
    id_imovel,
    valor,
    condominio,
    iptu,
    fn_CalcularCustoTotal(valor, condominio, iptu) AS custo_total
FROM 
    imovel;


-- 2. Usando a Função de BUSCA (fn_ObterNomeBairro)
--    (Supondo que Águas Claras seja o ID 3)
SELECT fn_ObterNomeBairro(3);
-- Resultado: 'Anchieta'


-- 3. Combinando a Função de BUSCA com o SELECT principal
--    (Embora um JOIN seja mais rápido aqui, é um ótimo exemplo de uso)
SELECT
    id_imovel,
    fn_ObterNomeBairro(id_bairro) AS nome_do_bairro,
    quartos,
    valor
FROM
    imovel
WHERE
    id_tipo = 1; -- Onde o tipo é Apartamento