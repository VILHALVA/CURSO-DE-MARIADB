# MANIPULANDO REGISTROS
Manipular registros em uma tabela é uma parte essencial da gestão de um banco de dados. Você pode realizar várias operações, como inserir, atualizar, recuperar e excluir registros de uma tabela. Vou mostrar alguns exemplos de como você pode realizar essas operações no MariaDB.

**Inserindo registros em uma tabela:**

Para inserir um novo registro em uma tabela, você usará o comando `INSERT INTO`. Aqui está um exemplo de como inserir um novo cliente na tabela "Clientes":

```sql
-- Inserir um novo cliente na tabela "Clientes"
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES ('Maria', 'maria@email.com', '123-456-7890');
```

Neste exemplo, estamos inserindo um novo cliente com o nome "Maria", um endereço de e-mail e um número de telefone na tabela "Clientes".

**Atualizando registros em uma tabela:**

Para atualizar registros em uma tabela, você usará o comando `UPDATE`. Aqui está um exemplo de como atualizar o endereço de e-mail de um cliente específico na tabela "Clientes":

```sql
-- Atualizar o endereço de e-mail do cliente com ID 1 na tabela "Clientes"
UPDATE Clientes
SET Email = 'novo_email@email.com'
WHERE ID = 1;
```

Neste exemplo, estamos atualizando o endereço de e-mail do cliente com ID 1 para o novo endereço de e-mail.

**Recuperando registros de uma tabela:**

Para recuperar registros de uma tabela, você usará o comando `SELECT`. Aqui está um exemplo de como recuperar todos os clientes da tabela "Clientes":

```sql
-- Recuperar todos os clientes da tabela "Clientes"
SELECT * FROM Clientes;
```

Neste exemplo, estamos recuperando todos os registros da tabela "Clientes". O uso de `*` indica que estamos selecionando todas as colunas da tabela.

**Excluindo registros de uma tabela:**

Para excluir registros de uma tabela, você usará o comando `DELETE`. Aqui está um exemplo de como excluir um cliente com um ID específico da tabela "Clientes":

```sql
-- Excluir o cliente com ID 2 da tabela "Clientes"
DELETE FROM Clientes
WHERE ID = 2;
```

Neste exemplo, estamos excluindo o registro do cliente com ID 2 da tabela "Clientes".

Esses são exemplos básicos de como você pode manipular registros em uma tabela no MariaDB. Lembre-se de que você pode personalizar essas operações para atender às suas necessidades específicas, como a adição de cláusulas `WHERE` para filtrar registros ou a atualização de múltiplos registros de uma só vez. Certifique-se de tomar precauções ao excluir registros, pois essa ação é irreversível. Sempre faça backup de seus dados importantes antes de realizar operações de exclusão.