-- 1. Mudar o delimitador
DELIMITER $$

-- 2. Criando a procedure
CREATE PROCEDURE sp_BuscarImoveisPorBairro(IN p_nome_bairro VARCHAR(150))
BEGIN
    -- Esta é a consulta que fizemos antes, mas agora usa o parâmetro
    SELECT 
        i.id_imovel,
        t.nome AS tipo_imovel,
        b.nome AS bairro,
        i.quartos,
        i.vagas,
        i.area,
        i.valor,
        i.condominio
    FROM 
        imovel AS i
    JOIN 
        tipo AS t ON i.id_tipo = t.id_tipo
    JOIN 
        bairro AS b ON i.id_bairro = b.id_bairro
    WHERE
        b.nome = p_nome_bairro;
END$$

-- 3. Voltar o delimitador ao normal
DELIMITER ;

-- Agora, em vez de digitar todo o SELECT, você só faz isso:
CALL sp_BuscarImoveisPorBairro('Copacabana');

-- E para outro bairro:
CALL sp_BuscarImoveisPorBairro('Barra da Tijuca');