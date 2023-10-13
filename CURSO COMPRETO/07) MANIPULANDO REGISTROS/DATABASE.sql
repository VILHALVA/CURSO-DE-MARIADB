-- Inserir um novo cliente na tabela "Clientes"
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES ('Maria', 'maria@email.com', '123-456-7890');

-- Atualizar o endereço de e-mail do cliente com ID 1 na tabela "Clientes"
UPDATE Clientes
SET Email = 'novo_email@email.com'
WHERE ID = 1;

-- Recuperar todos os clientes da tabela "Clientes"
SELECT * FROM Clientes;

-- Excluir o cliente com ID 2 da tabela "Clientes"
DELETE FROM Clientes
WHERE ID = 2;

