# SELECT:
A declaração `SELECT` é uma das instruções SQL mais comuns e é usada para recuperar dados de um banco de dados. Ela permite que você selecione dados específicos de uma ou mais tabelas, aplique filtros e ordene os resultados conforme necessário. Aqui está a estrutura geral de uma declaração `SELECT`:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Aqui está uma explicação de cada parte da declaração `SELECT`:

- `SELECT column1, column2, ...`: Aqui você lista as colunas que deseja recuperar dos dados da tabela. Você pode especificar uma ou várias colunas separadas por vírgulas. Se você usar `*`, isso significa que você deseja selecionar todas as colunas na tabela.

- `FROM table_name`: Aqui você especifica a tabela da qual deseja recuperar os dados. Substitua `table_name` pelo nome da tabela da qual deseja obter informações.

- `WHERE condition`: A cláusula `WHERE` é opcional, mas é usada para aplicar condições para filtrar os registros que atendem a critérios específicos. Isso permite que você selecione apenas os dados que atendem a determinadas condições.

Aqui estão alguns exemplos de como usar a declaração `SELECT` em várias situações:

**Exemplo 1: Selecionando todas as colunas de uma tabela:**

```sql
SELECT * FROM clientes;
```

Este comando selecionará todos os registros e todas as colunas da tabela "clientes".

**Exemplo 2: Selecionando colunas específicas:**

```sql
SELECT nome, email FROM clientes;
```

Este comando selecionará apenas as colunas "nome" e "email" da tabela "clientes".

**Exemplo 3: Selecionando registros com base em uma condição:**

```sql
SELECT * FROM pedidos WHERE valor_total > 100;
```

Este comando selecionará todos os registros da tabela "pedidos" onde o valor total seja maior que 100.

**Exemplo 4: Ordenando os resultados:**

```sql
SELECT nome, idade FROM funcionarios ORDER BY idade DESC;
```

Este comando selecionará os nomes e idades dos funcionários da tabela "funcionarios" e os ordenará em ordem decrescente de idade.

A declaração `SELECT` é extremamente versátil e pode ser usada para recuperar dados com base em uma ampla variedade de critérios, permitindo que você obtenha as informações desejadas de suas tabelas de banco de dados.