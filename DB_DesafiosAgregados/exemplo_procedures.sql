CREATE DATABASE exemplos_procedures;
USE exemplos_procedures;

-- 1. Redefine o delimitador para o bloco seja executado como um 
DELIMITER //

-- 2. Criação da Stored Procedure simples

CREATE PROCEDURE SP_AloMundo ()
BEGIN

-- O comando SELECT é usado para retornar o valor/mensagem
	SELECT 'Alô Mundo!' AS Mensagem;
END //

-- 3. Restaura o delimitador padrão
DELIMITER ;

CALL SP_AloMundo();

DELIMITER //
-- 1. Redefine o delimitador para o bloco seja executado com

CREATE PROCEDURE SP_SomarComVariaveis()
BEGIN
	-- Declarando as variáveis Locais
    -- Variável para o primeiro número (1)
    DECLARE num1 INT DEFAULT 1;
	-- Variável para o segundo número (2)
    DECLARE num2 INT DEFAULT 2;
	-- Variável para armazenar o resultado da soma
    DECLARE resultado_soma INT;
    -- PROCESSAMENTO (ATRIBUÇÂO DE VALOR)
    -- O comando SET é usado para atribuir o resultado da soma à variável
    SET resultado_soma = num1 + num2;
    SELECT resultado_soma AS Resultado;
END //
	
    
-- 3. Restaura o delimitador padrão
CALL SP_SomarComVariaveis();