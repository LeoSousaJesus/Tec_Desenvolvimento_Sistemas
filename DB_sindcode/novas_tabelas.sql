CREATE TABLE informacoes_pessoais (
    id_filiado INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL UNIQUE, -- Armazenar apenas os números é uma boa prática
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    naturalidade VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL, -- UF com 2 caracteres (ex: 'DF')
    cep VARCHAR(8) NOT NULL, -- Armazenar apenas os números
    sexo ENUM('Feminino', 'Masculino') NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Coluna bônus para rastrear quando o cadastro foi feito
);

CREATE TABLE dados_complementares (
    filiado_id INT PRIMARY KEY, -- Esta é a Chave Primária e também a Estrangeira
    nome_pai VARCHAR(150),
    nome_mae VARCHAR(150) NOT NULL,
    rg VARCHAR(20) NOT NULL,
    orgao_emissor VARCHAR(20) NOT NULL,
    data_emissao_rg DATE NOT NULL,
    escolaridade ENUM(
        'Fundamental Incompleto',
        'Fundamental Completo',
        'Médio Incompleto',
        'Médio Completo',
        'Superior Incompleto',
        'Superior Completo',
        'Pós-graduação'
    ) NOT NULL,
    estado_civil ENUM(
        'Solteiro(a)',
        'Casado(a)',
        'Divorciado(a)',
        'Viúvo(a)',
        'União Estável'
    ) NOT NULL,
    tipo_sanguineo ENUM(
        'A+', 'A-',
        'B+', 'B-',
        'AB+', 'AB-',
        'O+', 'O-'
    ) NOT NULL,
    
    -- Restrição de Chave Estrangeira
    CONSTRAINT fk_dados_pessoais
        FOREIGN KEY (filiado_id)
        REFERENCES informacoes_pessoais(id_filiado)
        ON DELETE CASCADE -- Se o filiado for removido, seus dados complementares também serão.
);