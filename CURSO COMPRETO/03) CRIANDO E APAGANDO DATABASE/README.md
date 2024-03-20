# CRIANDO E APAGANDO DATABASE
1. **Criar um Banco de Dados:**

   ```sql
   -- Comando para criar um banco de dados chamado "nome_do_banco"
   CREATE DATABASE nome_do_banco;
   ```

   - `CREATE DATABASE`: Este é o comando SQL utilizado para criar um novo banco de dados.
   - `nome_do_banco`: Aqui você deve substituir "nome_do_banco" pelo nome desejado para o seu banco de dados. Este é um parâmetro obrigatório e define o nome do banco de dados que você está criando.

   Este comando é usado para criar um novo banco de dados no servidor MariaDB com o nome especificado. Após a execução deste comando, um novo banco de dados será criado e estará disponível para uso.

2. **Apagar um Banco de Dados:**

   ```sql
   -- Comando para apagar o banco de dados "nome_do_banco" (cuidado, isso é irreversível!)
   DROP DATABASE nome_do_banco;
   ```

   - `DROP DATABASE`: Este é o comando SQL utilizado para apagar (ou "dropar") um banco de dados existente.
   - `nome_do_banco`: Aqui você deve substituir "nome_do_banco" pelo nome do banco de dados que deseja apagar. Este é um parâmetro obrigatório e define qual banco de dados será apagado.

   Este comando é usado para apagar permanentemente um banco de dados existente, juntamente com todas as suas tabelas e dados. É importante ter cuidado ao usar este comando, pois ele é irreversível e resultará na perda definitiva de todos os dados do banco de dados especificado.

Lembre-se de que ao usar comandos SQL para criar ou apagar bancos de dados, é fundamental ter as permissões adequadas no servidor MariaDB. Sem as permissões adequadas, você não poderá executar esses comandos com sucesso. Certifique-se de ter as permissões apropriadas ou consulte o administrador do banco de dados para obter assistência.

Além disso, é sempre recomendável fazer backup dos dados importantes antes de realizar operações que possam resultar na perda de dados, como apagar um banco de dados. Isso ajuda a garantir que seus dados estejam seguros e protegidos contra possíveis erros.

3. **Consultar os databases:**
Para visualizar todos os bancos de dados disponíveis em um servidor MariaDB, você pode usar o comando SQL `SHOW DATABASES;`. Aqui está como usar esse comando:

```sql
SHOW DATABASES;
```

**SHOW DATABASES:**
   
   O comando `SHOW DATABASES` é uma instrução SQL que é usada para exibir uma lista de todos os bancos de dados disponíveis no servidor MariaDB.

**; (ponto e vírgula):**

   O ponto e vírgula é usado para indicar o fim de um comando SQL. Em muitos sistemas de gerenciamento de banco de dados (DBMS), incluindo o MariaDB, é uma prática padrão terminar cada comando SQL com um ponto e vírgula.

Quando você executa `SHOW DATABASES;` em um cliente MariaDB, o servidor MariaDB retorna uma lista de todos os bancos de dados disponíveis. Isso inclui não apenas os bancos de dados criados pelo usuário, mas também os bancos de dados do sistema e outros bancos de dados que podem ser mantidos pelo servidor para diversos fins.

Esta lista de bancos de dados pode incluir bancos de dados padrão como `information_schema`, `mysql`, `performance_schema`, entre outros, dependendo da configuração do seu servidor MariaDB.
