# INNER JOIN COM MUITAS TABELAS:
Um INNER JOIN com muitas tabelas é uma operação que combina dados de várias tabelas com base em uma condição de junção comum, retornando apenas os registros que têm correspondências em todas as tabelas envolvidas. Isso é útil quando você precisa recuperar dados de várias tabelas relacionadas em um único resultado.

Aqui está um exemplo de INNER JOIN com três tabelas: "Pedidos," "Clientes," e "ItensDoPedido." Neste exemplo, estamos tentando recuperar informações sobre pedidos, clientes e os itens incluídos em cada pedido:

```sql
SELECT Clientes.Nome, Pedidos.DataPedido, ItensDoPedido.Produto
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ID
INNER JOIN ItensDoPedido ON Pedidos.NumeroPedido = ItensDoPedido.NumeroPedido;
```

Neste comando SQL, estamos realizando um INNER JOIN em três tabelas: "Pedidos," "Clientes," e "ItensDoPedido." Aqui estão os detalhes:

- O primeiro INNER JOIN combina a tabela "Pedidos" com a tabela "Clientes" usando a chave estrangeira "ClienteID" na tabela "Pedidos" e a chave primária "ID" na tabela "Clientes."

- O segundo INNER JOIN combina o resultado do primeiro INNER JOIN (que já inclui informações de clientes) com a tabela "ItensDoPedido" usando a chave primária "NumeroPedido" na tabela "Pedidos" e a chave estrangeira correspondente na tabela "ItensDoPedido."

O resultado desse comando será uma lista que inclui o nome do cliente, a data do pedido e o produto incluído em cada pedido. É uma maneira eficaz de combinar informações de várias tabelas relacionadas em uma única consulta.

Você pode continuar adicionando INNER JOINs para incluir mais tabelas se necessário, desde que todas estejam relacionadas por chaves primárias e chaves estrangeiras. Certifique-se de planejar cuidadosamente sua consulta para evitar consultas excessivamente complexas e garantir que você esteja recuperando as informações desejadas de forma eficiente.