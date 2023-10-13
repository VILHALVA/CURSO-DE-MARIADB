-- Selecionar todos os registros e todas as colunas da tabela "clientes"
SELECT * FROM clientes;

-- Selecionar apenas as colunas "nome" e "email" da tabela "clientes"
SELECT nome, email FROM clientes;

-- Selecionar todos os registros da tabela "pedidos" onde o valor total é maior que 100
SELECT * FROM pedidos WHERE valor_total > 100;

-- Selecionar os nomes e idades dos funcionários da tabela "funcionarios" e ordená-los em ordem decrescente de idade
SELECT nome, idade FROM funcionarios ORDER BY idade DESC;


