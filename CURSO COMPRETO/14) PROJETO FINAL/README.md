# PROJETO FINAL
Aqui está um projeto final que reúne todos os conceitos discutidos, incluindo a criação de tabelas, a definição de chaves estrangeiras, a realização de operações JOIN e a execução de consultas SQL complexas envolvendo várias tabelas. Neste projeto, criaremos um banco de dados simples para gerenciar informações sobre pedidos de clientes.

**Projeto Final: Sistema de Gerenciamento de Pedidos de Clientes**

Vamos criar um sistema de gerenciamento de pedidos de clientes que consiste em quatro tabelas:

1. `Clientes`: Armazenará informações sobre os clientes, como nome, endereço e email.

2. `Pedidos`: Conterá detalhes sobre cada pedido, incluindo a data do pedido e o cliente que fez o pedido. Esta tabela terá uma chave estrangeira que faz referência à tabela "Clientes".

3. `ItensDoPedido`: Registará os itens específicos incluídos em cada pedido, incluindo o produto, a quantidade e o preço. Esta tabela terá uma chave estrangeira que faz referência à tabela "Pedidos."

4. `Produtos`: Manterá informações sobre os produtos disponíveis, como nome e preço unitário.

Aqui estão os comandos SQL para criar o esquema do banco de dados e executar algumas consultas:

```sql
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
```

Este projeto cria um banco de dados que permite rastrear informações sobre pedidos de clientes, detalhes dos itens do pedido e informações de produtos. O último comando SELECT demonstra como recuperar informações combinando dados de todas as quatro tabelas com operações JOIN.

Este é um exemplo simplificado, mas ilustra como os conceitos de tabelas, chaves estrangeiras e JOINs podem ser aplicados em um cenário de banco de dados do mundo real. Você pode expandir este projeto com mais funcionalidades, como adicionar campos de pagamento, status de entrega e muito mais, de acordo com as necessidades do seu aplicativo de gerenciamento de pedidos.