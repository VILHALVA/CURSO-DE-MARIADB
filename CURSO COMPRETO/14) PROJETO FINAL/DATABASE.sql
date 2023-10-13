-- Criar a tabela "Clientes" para armazenar informações sobre os clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Email VARCHAR(255)
);

-- Criar a tabela "Produtos" para armazenar informações sobre os produtos
CREATE TABLE Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(255),
    PrecoUnitario DECIMAL(10, 2)
);

-- Criar a tabela "Pedidos" para rastrear informações sobre os pedidos dos clientes
CREATE TABLE Pedidos (
    NumeroPedido INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Criar a tabela "ItensDoPedido" para listar os itens incluídos em cada pedido
CREATE TABLE ItensDoPedido (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NumeroPedido INT,
    ProdutoID INT,
    Quantidade INT,
    PrecoTotal DECIMAL(10, 2),
    FOREIGN KEY (NumeroPedido) REFERENCES Pedidos(NumeroPedido),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ID)
);

-- Inserir dados nas tabelas
INSERT INTO Clientes (Nome, Endereco, Email) VALUES
    ('João', 'Rua A, 123', 'joao@email.com'),
    ('Maria', 'Avenida B, 456', 'maria@email.com');

INSERT INTO Produtos (NomeProduto, PrecoUnitario) VALUES
    ('Produto 1', 10.99),
    ('Produto 2', 15.50),
    ('Produto 3', 7.25);

INSERT INTO Pedidos (ClienteID, DataPedido) VALUES
    (1, '2023-01-15'),
    (2, '2023-01-16');

INSERT INTO ItensDoPedido (NumeroPedido, ProdutoID, Quantidade, PrecoTotal) VALUES
    (1, 1, 3, 32.97),
    (1, 2, 2, 31.00),
    (2, 3, 5, 36.25);

-- Consulta para recuperar informações sobre pedidos de clientes, incluindo detalhes dos itens e nome do cliente
SELECT Clientes.Nome, Pedidos.DataPedido, Produtos.NomeProduto, ItensDoPedido.Quantidade, ItensDoPedido.PrecoTotal
FROM Clientes
INNER JOIN Pedidos ON Clientes.ID = Pedidos.ClienteID
INNER JOIN ItensDoPedido ON Pedidos.NumeroPedido = ItensDoPedido.NumeroPedido
INNER JOIN Produtos ON ItensDoPedido.ProdutoID = Produtos.ID;
