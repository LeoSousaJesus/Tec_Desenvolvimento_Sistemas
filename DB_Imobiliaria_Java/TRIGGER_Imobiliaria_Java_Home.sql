DELIMITER $$

CREATE TRIGGER trg_ValidaCondominio_BI -- BI = Before Insert
BEFORE INSERT ON imovel
FOR EACH ROW
BEGIN
    -- Estamos checando a linha que está para ser inserida (NEW)
    IF (NEW.id_tipo = 1 OR NEW.id_tipo = 3) AND (NEW.condominio IS NULL OR NEW.condominio <= 0) THEN
    
        -- Se a regra for violada, nós disparamos um erro e
        -- impedimos o INSERT de acontecer.
        SIGNAL SQLSTATE '45000' -- '45000' é um código genérico para erro do usuário
        SET MESSAGE_TEXT = 'Erro: Apartamentos e Kitnets devem ter um valor de condomínio positivo cadastrado.';
        
    END IF;
END$$

DELIMITER ;

-- Esta tentativa de INSERT vai FALHAR:
INSERT INTO imovel (id_tipo, id_bairro, quartos, vagas, suites, area, valor, condominio, iptu) 
VALUES 
(1, 1, 2, 1, 1, 70, 2500.00, 0.00, 120.00); -- Condomínio zerado

-- O banco de dados vai retornar um erro:
-- [Erro 1644] Erro: Apartamentos e Kitnets devem ter um valor de condomínio positivo cadastrado.

-- Esta tentativa de INSERT vai FUNCIONAR:
INSERT INTO imovel (id_tipo, id_bairro, quartos, vagas, suites, area, valor, condominio, iptu) 
VALUES 
(1, 1, 2, 1, 1, 70, 2500.00, 500.00, 120.00); -- Condomínio válido