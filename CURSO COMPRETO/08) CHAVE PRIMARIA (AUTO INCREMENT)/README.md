# CHAVE PRIMARIA (AUTO INCREMENT)
Se você deseja definir uma chave primária com a opção de autoincremento no MariaDB, pode usar o tipo de dados `INT` ou `BIGINT` com a cláusula `AUTO_INCREMENT`. Aqui está como você pode fazer isso:

```sql
CREATE TABLE nome_da_tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária auto incrementada para identificar exclusivamente cada funcionário
    nome VARCHAR(255) NOT NULL,         -- Nome do funcionário (não pode ser nulo)
    idade INT,                           -- Idade do funcionário
    email VARCHAR(255) UNIQUE            -- Endereço de email do funcionário (deve ser único)
);
```

Neste exemplo, `id INT AUTO_INCREMENT PRIMARY KEY` define a coluna `id` como a chave primária da tabela `funcionarios`. O `AUTO_INCREMENT` indica ao MariaDB que os valores para essa coluna devem ser gerados automaticamente e incrementados para cada novo registro inserido na tabela. Isso garante que cada funcionário tenha um `id` exclusivo e sequencial.

As outras colunas na tabela (`nome`, `idade` e `email`) seguem a mesma estrutura que no exemplo anterior.

Essa abordagem é útil para garantir que sua chave primária seja única e sequencialmente crescente sem a necessidade de inserir manualmente os valores dos `id`.