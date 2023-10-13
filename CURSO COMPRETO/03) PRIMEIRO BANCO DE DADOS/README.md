# PRIMEIRO BANCO DE DADOS
Parabéns por começar a trabalhar com bancos de dados! Criar seu primeiro banco de dados é um passo importante. Vou guiá-lo pelo processo de criação de um banco de dados simples no MariaDB. Para isso, vamos usar a linha de comando e o MySQL Client, que é uma ferramenta para interagir com bancos de dados MySQL e MariaDB.

**Passos para criar seu primeiro banco de dados:**

1. **Acessar o MySQL Client:**
   - No Linux, abra um terminal.
   - No Windows, você pode usar o Prompt de Comando ou o PowerShell.

2. **Conectar ao servidor MariaDB:**
   - Use o seguinte comando e substitua `seu_usuario` pelo nome de usuário do MariaDB e `sua_senha` pela senha que você configurou durante a instalação (ou deixe em branco se você não configurou uma senha):
   
     ```
     mysql -u seu_usuario -p
     ```
     Pressione Enter e você será solicitado a inserir a senha.

3. **Criar um novo banco de dados:**
   - Agora que você está conectado ao servidor MariaDB, você pode criar um novo banco de dados. Substitua `nome_do_banco` pelo nome que deseja dar ao seu banco de dados:

     ```
     CREATE DATABASE nome_do_banco;
     ```
     Por exemplo, para criar um banco de dados chamado "minhadb", você usaria:

     ```
     CREATE DATABASE minhadb;
     ```

4. **Verificar a criação do banco de dados:**
   - Você pode verificar se o banco de dados foi criado com sucesso usando o comando:

     ```
     SHOW DATABASES;
     ```

   - Você verá uma lista de todos os bancos de dados, incluindo o que você acabou de criar.

5. **Selecionar o banco de dados:**
   - Para começar a usar o banco de dados recém-criado, use o comando:

     ```
     USE nome_do_banco;
     ```

     Por exemplo:

     ```
     USE minhadb;
     ```

Agora você criou com sucesso seu primeiro banco de dados MariaDB. Você pode começar a criar tabelas, inserir dados, executar consultas SQL e realizar outras operações relacionadas ao banco de dados. Certifique-se de explorar e aprender mais sobre como gerenciar dados no MariaDB à medida que avança em sua jornada com bancos de dados.