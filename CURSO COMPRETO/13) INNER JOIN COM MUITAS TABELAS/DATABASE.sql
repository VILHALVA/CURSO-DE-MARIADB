-- Selecionar o nome do cliente, a data do pedido e o produto incluído em cada pedido
-- Combinar dados das tabelas "Pedidos," "Clientes," e "ItensDoPedido" usando INNER JOINs

-- O primeiro INNER JOIN combina "Pedidos" e "Clientes" com base na chave estrangeira "ClienteID"
-- na tabela "Pedidos" e na chave primária "ID" na tabela "Clientes"
SELECT Clientes.Nome, Pedidos.DataPedido, ItensDoPedido.Produto
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ID

-- O segundo INNER JOIN combina o resultado anterior com a tabela "ItensDoPedido"
-- usando a chave primária "NumeroPedido" na tabela "Pedidos" e a chave estrangeira correspondente na tabela "ItensDoPedido"
INNER JOIN ItensDoPedido ON Pedidos.NumeroPedido = ItensDoPedido.NumeroPedido;
