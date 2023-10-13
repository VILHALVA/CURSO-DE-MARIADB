# GERENCIANDO COPIAS
Gerenciar cópias de segurança (backups) é uma parte crítica da administração de bancos de dados para garantir a recuperação de dados em caso de falhas, erros ou desastres. Existem várias maneiras de fazer backups em um banco de dados MariaDB, e a escolha do método depende das suas necessidades e recursos. Vou explicar duas maneiras comuns de gerenciar cópias de segurança no MariaDB:

1. **Backup Completo (Full Backup):** Um backup completo é uma cópia completa de todo o banco de dados e de todas as tabelas. Isso garante a recuperação completa de todos os dados, mas pode ser demorado e requer mais espaço de armazenamento.

2. **Backup Incremental:** Um backup incremental é uma abordagem que cria cópias de segurança apenas das alterações desde o último backup. Isso economiza espaço de armazenamento e tempo, mas requer mais complexidade na restauração dos dados.

**Backup Completo (Full Backup):**

Para fazer um backup completo do MariaDB, você pode usar o utilitário `mysqldump` ou ferramentas de backup de terceiros. Aqui estão os passos gerais para criar um backup completo usando o `mysqldump`:

1. Abra um terminal ou prompt de comando.

2. Use o comando `mysqldump` para criar um arquivo de backup SQL. Substitua `seu_usuario`, `sua_senha`, `nome_do_banco` e `caminho_para_o_arquivo.sql` pelos seus próprios valores:

   ```bash
   mysqldump -u seu_usuario -p sua_senha nome_do_banco > caminho_para_o_arquivo.sql
   ```

3. O comando irá solicitar sua senha. Insira a senha do seu banco de dados.

4. O arquivo `caminho_para_o_arquivo.sql` conterá um backup completo do banco de dados especificado.

**Backup Incremental:**

Para fazer um backup incremental, você precisará de uma estratégia mais complexa que envolve a criação de backups periódicos das transações de log (binlog) do MariaDB. Os passos gerais são os seguintes:

1. Configure o MariaDB para registrar as transações no log binário. Isso é feito no arquivo de configuração `my.cnf` ou `my.ini`.

   ```ini
   [mysqld]
   log-bin=mysql-bin
   ```

2. Crie backups regulares do log binário em intervalos definidos usando uma ferramenta de backup, como o `mysqlbinlog` ou ferramentas de terceiros.

3. Para restaurar, você precisará aplicar os backups completos e, em seguida, aplicar os backups incrementais na ordem correta.

Tenha em mente que a restauração de backups incrementais pode ser mais complexa do que a restauração de backups completos. Portanto, você deve estar familiarizado com a documentação do MariaDB e os procedimentos de restauração antes de confiar em backups incrementais.

Lembre-se de que a criação regular de backups é uma prática importante para garantir a recuperação de dados em caso de falhas. O período de retenção dos backups e a estratégia de backup dependem das necessidades de recuperação de dados da sua organização.