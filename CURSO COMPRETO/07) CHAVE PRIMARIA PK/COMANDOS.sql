CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária auto incrementada para identificar exclusivamente cada funcionário
    nome VARCHAR(255) NOT NULL,         -- Nome do funcionário (não pode ser nulo)
    idade INT,                           -- Idade do funcionário
    email VARCHAR(255) UNIQUE            -- Endereço de email do funcionário (deve ser único)
);
