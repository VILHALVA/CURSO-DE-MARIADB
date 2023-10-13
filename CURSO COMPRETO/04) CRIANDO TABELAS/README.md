# CRIANDO TABELAS:
Criar tabelas é uma parte fundamental da criação e gerenciamento de bancos de dados no MariaDB. As tabelas são onde os dados são armazenados de maneira estruturada. Para criar uma tabela, você precisará do uso de comandos SQL, e eu vou guiá-lo através do processo de criação de uma tabela simples. Vamos criar uma tabela chamada "Clientes" com alguns campos básicos.

Aqui está como você pode criar uma tabela no MariaDB:

1. **Conecte-se ao seu banco de dados:**
   Certifique-se de estar conectado ao banco de dados no qual deseja criar a tabela. Se você seguiu as etapas anteriores, você já deve estar conectado ao banco de dados que você criou. Se não estiver conectado, você pode usar o comando `USE nome_do_banco;` para selecionar o banco de dados apropriado.

2. **Criar uma tabela:**
   Use o comando `CREATE TABLE` para criar a tabela. Aqui está um exemplo de criação de uma tabela chamada "Clientes" com três campos: ID, Nome e Email:

   ```sql
   CREATE TABLE Clientes (
       ID INT AUTO_INCREMENT PRIMARY KEY,
       Nome VARCHAR(255),
       Email VARCHAR(255)
   );
   ```

   - `ID INT AUTO_INCREMENT PRIMARY KEY`: Este é o campo que armazenará um número inteiro para identificar exclusivamente cada registro na tabela. O `AUTO_INCREMENT` indica que o valor será gerado automaticamente e `PRIMARY KEY` define este campo como a chave primária da tabela, garantindo unicidade.

   - `Nome VARCHAR(255)`: Este campo armazenará o nome do cliente como uma string de até 255 caracteres.

   - `Email VARCHAR(255)`: Este campo armazenará o endereço de e-mail do cliente.

3. **Executar o comando SQL:**
   Após criar o comando SQL, execute-o no MySQL Client (ou no cliente SQL que você está usando) para criar a tabela:

   ```sql
   CREATE TABLE Clientes (
       ID INT AUTO_INCREMENT PRIMARY KEY,
       Nome VARCHAR(255),
       Email VARCHAR(255)
   );
   ```

4. **Verificar a tabela:**
   Você pode verificar se a tabela foi criada com sucesso usando o comando `SHOW TABLES;`. Isso listará todas as tabelas no banco de dados.

   ```sql
   SHOW TABLES;
   ```

Agora você tem uma tabela chamada "Clientes" com os campos ID, Nome e Email. Você pode continuar a inserir dados nesta tabela, executar consultas SQL e realizar outras operações de gerenciamento de dados à medida que desenvolve seu aplicativo ou sistema de banco de dados. Lembre-se de que a estrutura da tabela pode variar de acordo com suas necessidades e requisitos específicos.