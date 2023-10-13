-- Criar uma tabela "Clientes" com colunas para ID, Nome e Email
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255)
);

-- Inserir um novo cliente na tabela "Clientes"
INSERT INTO Clientes (Nome, Email) VALUES ('João', 'joao@email.com');

-- Criar uma tabela "Pedidos" com uma chave estrangeira que referencia a tabela "Clientes"
CREATE TABLE Pedidos (
    NumeroPedido INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Selecionar o nome do cliente e a data do pedido de todos os pedidos
SELECT Clientes.Nome, Pedidos.DataPedido
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ID;

-- Atualizar o endereço de e-mail de um cliente específico
UPDATE Clientes
SET Email = 'novo_email@email.com'
WHERE Nome = 'João';
