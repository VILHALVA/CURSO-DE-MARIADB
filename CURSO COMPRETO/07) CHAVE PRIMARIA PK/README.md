# CHAVE PRIMARIA PK
A chave primária (Primary Key - PK) em um banco de dados é um campo ou conjunto de campos que identifica de forma única cada registro em uma tabela. Aqui estão alguns pontos-chave sobre chaves primárias:

1. **Identificação Única:** Uma chave primária deve ser única para cada registro na tabela. Isso significa que nenhum valor na chave primária pode se repetir em diferentes linhas.

2. **Não Nula:** A chave primária não pode conter valores nulos. Cada registro deve ter um valor válido para a chave primária.

3. **Índice Implícito:** Em muitos sistemas de gerenciamento de banco de dados (SGBDs), incluindo o MariaDB, a criação de uma chave primária também cria automaticamente um índice para a coluna ou conjunto de colunas da chave primária. Isso ajuda a melhorar o desempenho das consultas que envolvem a chave primária.

4. **Relações:** As chaves primárias são frequentemente usadas para estabelecer relações entre tabelas em um banco de dados relacional. Uma chave primária em uma tabela pode ser referenciada como uma chave estrangeira em outra tabela, estabelecendo assim uma relação entre elas.

Para criar uma chave primária em uma tabela no MariaDB, você pode usar a cláusula `PRIMARY KEY` ao definir a estrutura da tabela. Aqui está um exemplo:

```sql
CREATE TABLE exemplo (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT
);
```

Neste exemplo, a coluna `id` é definida como a chave primária da tabela `exemplo`. Isso significa que cada valor na coluna `id` deve ser único e não pode ser nulo. Essa chave primária será usada para identificar exclusivamente cada registro na tabela `exemplo`.

As chaves primárias desempenham um papel fundamental no design de banco de dados relacional, garantindo a integridade e a consistência dos dados armazenados nas tabelas.