# INSERINDO DADOS NA TABELA
Inserir dados em uma tabela é uma etapa fundamental para preencher seu banco de dados MariaDB com informações úteis. Para inserir dados em uma tabela, você usará o comando SQL `INSERT INTO`. Vou mostrar como inserir dados em uma tabela chamada "Clientes" com campos ID, Nome e Email, que criamos anteriormente. Aqui está como você pode fazer isso:

Suponha que você deseja inserir um novo cliente com ID 1, nome "João" e endereço de e-mail "joao@email.com".

```sql
INSERT INTO Clientes (ID, Nome, Email) VALUES (1, 'João', 'joao@email.com');
```

Neste comando:

- `INSERT INTO Clientes`: Especifica a tabela na qual você deseja inserir os dados, que é a tabela "Clientes" neste caso.

- `(ID, Nome, Email)`: Indica as colunas nas quais você está inserindo dados. Aqui, você está inserindo valores nas colunas ID, Nome e Email.

- `VALUES (1, 'João', 'joao@email.com')`: Fornece os valores que você deseja inserir nas colunas correspondentes. Certifique-se de que a ordem dos valores corresponda à ordem das colunas.

Depois de executar este comando, os dados do cliente serão inseridos na tabela "Clientes".

Se você deseja inserir vários registros de uma só vez, pode fazer algo assim:

```sql
INSERT INTO Clientes (ID, Nome, Email) VALUES
    (2, 'Maria', 'maria@email.com'),
    (3, 'Pedro', 'pedro@email.com'),
    (4, 'Ana', 'ana@email.com');
```

Neste exemplo, você está inserindo quatro registros de uma vez na tabela "Clientes".

Você pode executar os comandos `INSERT INTO` quantas vezes forem necessários para adicionar todos os dados à sua tabela. Certifique-se de que os dados inseridos estejam formatados corretamente de acordo com os tipos de dados definidos nas colunas da tabela.

Após a inserção dos dados, você pode consultar a tabela para verificar se os registros foram adicionados corretamente usando comandos `SELECT` ou realizar outras operações no banco de dados.