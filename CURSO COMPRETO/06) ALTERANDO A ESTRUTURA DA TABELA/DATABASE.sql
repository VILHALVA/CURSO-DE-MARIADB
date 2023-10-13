-- Adicionar uma nova coluna chamada "Telefone" à tabela "Clientes"
ALTER TABLE Clientes
ADD COLUMN Telefone VARCHAR(15);

-- Modificar a coluna "Nome" na tabela "Clientes" para permitir 300 caracteres
ALTER TABLE Clientes
MODIFY COLUMN Nome VARCHAR(300);

-- Remover a coluna "Telefone" da tabela "Clientes"
ALTER TABLE Clientes
DROP COLUMN Telefone;

-- Adicionar um índice chamado "idx_email" na coluna "Email" da tabela "Clientes"
ALTER TABLE Clientes
ADD INDEX idx_email (Email);

