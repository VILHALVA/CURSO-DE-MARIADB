# CRIANDO MINHA PRIMEIRA TABELA
Para criar sua primeira tabela no MariaDB com as colunas `id`, `nome` e `email`, você pode usar o comando `CREATE TABLE`. Aqui está como você pode fazer isso:

```sql
CREATE TABLE sua_tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
```

Vamos explicar cada parte deste comando:

1. `CREATE TABLE sua_tabela`: Este é o comando para criar uma nova tabela no banco de dados. Substitua `sua_tabela` pelo nome que você deseja dar à sua tabela.

2. `( id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL )`: Esta é a definição das colunas da sua tabela.
   - `id INT AUTO_INCREMENT PRIMARY KEY`: Isso cria uma coluna chamada `id` que é do tipo `INT` (número inteiro). A cláusula `AUTO_INCREMENT` significa que o valor desta coluna será automaticamente incrementado para cada novo registro adicionado à tabela. A cláusula `PRIMARY KEY` indica que esta coluna é a chave primária da tabela, o que significa que cada valor na coluna `id` será único.
   - `nome VARCHAR(255) NOT NULL`: Isso cria uma coluna chamada `nome` que é do tipo `VARCHAR`, que armazenará strings de até 255 caracteres de comprimento. A cláusula `NOT NULL` indica que o valor nesta coluna não pode ser nulo, ou seja, cada registro deve ter um valor válido para o `nome`.
   - `email VARCHAR(255) NOT NULL`: Isso cria uma coluna chamada `email` que é do tipo `VARCHAR`, semelhante à coluna `nome`. Também é definido como `NOT NULL`, garantindo que cada registro tenha um valor válido para o `email`.

Após executar este comando SQL, sua tabela será criada no banco de dados com as colunas especificadas.