# APAGAR OU ALTERAR UMA TABELA
Para apagar ou alterar uma tabela no MariaDB, você pode usar os comandos `DROP TABLE` e `ALTER TABLE`, respectivamente. Aqui estão os comandos e uma explicação de cada um:

1. **Apagar uma Tabela:**

```sql
DROP TABLE nome_da_tabela;
```

Este comando apaga permanentemente uma tabela específica do banco de dados. Substitua `nome_da_tabela` pelo nome da tabela que você deseja apagar. Tome cuidado ao usar este comando, pois ele resultará na perda de todos os dados e estrutura da tabela.

2. **Alterar uma Tabela (por exemplo, adicionando uma nova coluna):**

```sql
ALTER TABLE nome_da_tabela
ADD nome_nova_coluna tipo_de_dados;
```

Este comando é usado para modificar a estrutura de uma tabela existente. Por exemplo, você pode adicionar uma nova coluna à tabela especificada. Substitua `nome_da_tabela` pelo nome da tabela que você deseja alterar, `nome_nova_coluna` pelo nome da nova coluna que você deseja adicionar e `tipo_de_dados` pelo tipo de dados da nova coluna.

Aqui está um exemplo de como adicionar uma nova coluna à tabela `clientes` que criamos anteriormente:

```sql
ALTER TABLE clientes
ADD sobrenome VARCHAR(255);
```

Este comando adiciona uma nova coluna chamada `sobrenome` à tabela `clientes`, com o tipo de dados `VARCHAR` que pode armazenar strings de até 255 caracteres.

3. **Editar Tabela:**
   
   Para adicionar uma nova coluna à tabela `funcionarios`, você pode usar o comando `ALTER TABLE` da seguinte forma:

   ```sql
   ALTER TABLE funcionarios
   ADD data_contratacao DATE;
   ```

   Este comando adiciona uma nova coluna chamada `data_contratacao` à tabela `funcionarios` com o tipo de dados `DATE`.

4. **Editar Colunas:**
   
   Para modificar o tipo de dados de uma coluna existente, você pode usar o comando `ALTER TABLE` da seguinte forma:

   ```sql
   ALTER TABLE funcionarios
   MODIFY COLUMN nome VARCHAR(100);
   ```

   Este comando altera o tipo de dados da coluna `nome` na tabela `funcionarios` para `VARCHAR(100)`.

5. **Apagar Colunas:**
   
   Para apagar a coluna `telefone` da tabela `funcionarios`, você pode usar o comando `ALTER TABLE` da seguinte forma:

   ```sql
   ALTER TABLE funcionarios
   DROP COLUMN telefone;
   ```

   Este comando remove permanentemente a coluna `telefone` da tabela `funcionarios`.

6. **Apagar Tabelas:**
   
   Para apagar a tabela `funcionarios` do banco de dados, você pode usar o comando `DROP TABLE` da seguinte forma:

   ```sql
   DROP TABLE funcionarios;
   ```

   Este comando remove permanentemente a tabela `funcionarios` e todos os seus dados do banco de dados.

7. **Visualizar Tabela:**
   
   Para visualizar os dados da tabela `funcionarios`, você pode usar o comando `SELECT` da seguinte forma:

   ```sql
   SELECT * FROM funcionarios;
   ```

   Este comando retorna todos os dados armazenados na tabela `funcionarios`. Se você quiser ver apenas algumas colunas específicas, pode listar essas colunas após a palavra-chave `SELECT`.

   Para visualizar a estrutura da tabela `funcionarios`, você pode usar o comando `DESCRIBE` da seguinte forma:

   ```sql
   DESCRIBE funcionarios;
   ```

   Este comando exibe informações sobre as colunas da tabela, como o nome da coluna, tipo de dados, se permite valores nulos e outras propriedades.

Esses são exemplos de comandos SQL que você pode usar para editar, apagar e visualizar tabelas no MariaDB. Certifique-se de substituir os nomes de tabelas e colunas pelos seus próprios nomes de tabela e coluna, conforme necessário.