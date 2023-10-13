# ALTERANDO A ESTRUTURA DA TABELA
Para alterar a estrutura de uma tabela no MariaDB, você usará comandos SQL específicos, como `ALTER TABLE`. Esses comandos permitem que você adicione, modifique ou remova colunas, índices e restrições em uma tabela existente. Aqui estão alguns exemplos de como você pode alterar a estrutura de uma tabela:

**Adicionando uma nova coluna:**

Para adicionar uma nova coluna a uma tabela, você usará o comando `ALTER TABLE` com a cláusula `ADD COLUMN`. Por exemplo, para adicionar uma coluna "Telefone" à tabela "Clientes", você pode fazer o seguinte:

```sql
ALTER TABLE Clientes
ADD COLUMN Telefone VARCHAR(15);
```

Neste exemplo, estamos adicionando uma coluna chamada "Telefone" do tipo VARCHAR com um comprimento máximo de 15 caracteres à tabela "Clientes".

**Modificando uma coluna existente:**

Para modificar uma coluna existente, você usará o comando `ALTER TABLE` com a cláusula `MODIFY COLUMN`. Por exemplo, para aumentar o tamanho máximo da coluna "Nome" de 255 para 300 caracteres na tabela "Clientes", você pode fazer o seguinte:

```sql
ALTER TABLE Clientes
MODIFY COLUMN Nome VARCHAR(300);
```

Isso alterará a definição da coluna "Nome" para permitir um comprimento máximo de 300 caracteres.

**Removendo uma coluna:**

Para remover uma coluna de uma tabela, você usará o comando `ALTER TABLE` com a cláusula `DROP COLUMN`. Por exemplo, para remover a coluna "Telefone" da tabela "Clientes", você pode fazer o seguinte:

```sql
ALTER TABLE Clientes
DROP COLUMN Telefone;
```

Isso removerá a coluna "Telefone" da tabela "Clientes".

**Adicionando um índice:**

Para adicionar um índice a uma tabela, use o comando `ALTER TABLE` com a cláusula `ADD INDEX`. Por exemplo, para adicionar um índice na coluna "Email" na tabela "Clientes", você pode fazer o seguinte:

```sql
ALTER TABLE Clientes
ADD INDEX idx_email (Email);
```

Neste exemplo, estamos adicionando um índice chamado "idx_email" à coluna "Email" para acelerar consultas que usam essa coluna.

**Nota**: Tenha cuidado ao fazer alterações em tabelas que já contêm dados, pois as alterações na estrutura podem afetar os registros existentes. Certifique-se de fazer backup dos dados importantes antes de realizar alterações significativas em uma tabela.

Lembre-se de que a sintaxe e as opções exatas podem variar ligeiramente entre diferentes sistemas de gerenciamento de banco de dados, então consulte a documentação específica do MariaDB ou do MySQL para obter detalhes adicionais sobre as opções de alteração de tabela disponíveis.