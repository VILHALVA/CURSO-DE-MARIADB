-- Adiciona uma nova coluna chamada cliente_id na tabela produtos
-- Esta coluna será usada como chave estrangeira para conectar com a tabela clientes
ALTER TABLE produtos
ADD COLUMN cliente_id INT,

-- Define a restrição de chave estrangeira para a coluna cliente_id
-- A restrição garante que os valores nesta coluna correspondam aos valores na coluna id da tabela clientes
ADD CONSTRAINT fk_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES clientes(id);
