# FOREING KEY
Se você deseja adicionar uma chave estrangeira (foreign key) em uma tabela no MariaDB, você pode usar a cláusula `FOREIGN KEY` durante a criação da tabela ou através do comando `ALTER TABLE` posteriormente. Aqui está um exemplo de como você pode fazer isso:

Suponha que você tem duas tabelas: `pedidos` e `clientes`. Cada pedido está relacionado a um cliente específico, e você quer garantir que o cliente referenciado em um pedido exista na tabela `clientes`. 

Aqui está como você pode criar a tabela `pedidos` com uma chave estrangeira referenciando a tabela `clientes`:

```sql
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    valor DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
```

Neste exemplo:

- Na tabela `clientes`, definimos a coluna `id` como a chave primária para identificar exclusivamente cada cliente.
- Na tabela `pedidos`, a coluna `cliente_id` é usada para armazenar o identificador do cliente associado a cada pedido.
- A cláusula `FOREIGN KEY (cliente_id) REFERENCES clientes(id)` especifica que a coluna `cliente_id` em `pedidos` é uma chave estrangeira que referencia a coluna `id` na tabela `clientes`, estabelecendo assim uma relação entre as duas tabelas.

Com essa configuração, o banco de dados MariaDB garantirá que os valores na coluna `cliente_id` da tabela `pedidos` estejam sempre presentes na coluna `id` da tabela `clientes`, mantendo a integridade referencial entre as tabelas.