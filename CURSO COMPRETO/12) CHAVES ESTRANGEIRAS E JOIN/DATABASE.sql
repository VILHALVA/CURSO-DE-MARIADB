-- Criar uma tabela "Pedidos" com uma chave estrangeira que faz referência à tabela "Clientes"
CREATE TABLE Pedidos (
    NumeroPedido INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT, -- Esta é a chave estrangeira que se relaciona com a tabela "Clientes"
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID); -- Estabelecer a relação com a tabela "Clientes"

-- Selecionar o nome do cliente e a data do pedido combinando dados das tabelas "Pedidos" e "Clientes"
SELECT Clientes.Nome, Pedidos.DataPedido
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ID;
