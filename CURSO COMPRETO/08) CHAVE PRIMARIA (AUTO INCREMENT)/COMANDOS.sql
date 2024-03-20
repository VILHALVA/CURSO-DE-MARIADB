-- Criando a tabela produtos:
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária auto incrementada para identificar exclusivamente cada produto
    nome VARCHAR(255) NOT NULL,         -- Nome do produto (não pode ser nulo)
    valor DECIMAL(10, 2) NOT NULL       -- Valor do produto (não pode ser nulo)
);

-- Para adicionar a coluna "Quantidade" antes da coluna "valor" na tabela "produtos", você pode usar o comando ALTER TABLE:
ALTER TABLE produtos
ADD quantidade INT AFTER nome;

