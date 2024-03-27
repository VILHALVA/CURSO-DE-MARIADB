# Importar e Exportar Banco de Dados MariaDB
Para MariaDB, os comandos e procedimentos para importar e exportar bancos de dados são muito semelhantes aos do MySQL, pois o MariaDB é um fork do MySQL e mantém muita compatibilidade com ele. Vou guiá-lo rapidamente sobre como importar e exportar bancos de dados MariaDB tanto via linha de comando quanto por meio de uma interface gráfica:

## via Linha de Comando (Shell):
### Exportar (Backup):
```bash
mysqldump -u [nome_do_usuário] -p [nome_do_banco_de_dados] > [nome_do_arquivo_de_backup].sql
```

Substitua `[nome_do_usuário]` pelo nome de usuário do MariaDB.
Substitua `[nome_do_banco_de_dados]` pelo nome do banco de dados que deseja fazer o backup.
Substitua `[nome_do_arquivo_de_backup]` pelo nome do arquivo de backup que deseja criar.

### Importar (Restaurar):
```bash
mysql -u [nome_do_usuário] -p [nome_do_banco_de_dados] < [caminho_para_o_arquivo_de_backup].sql
```

Substitua `[nome_do_usuário]` pelo nome de usuário do MariaDB.
Substitua `[nome_do_banco_de_dados]` pelo nome do banco de dados no qual deseja importar.
Substitua `[caminho_para_o_arquivo_de_backup]` pelo caminho completo para o arquivo de backup que deseja importar.

## Via Interface Gráfica:
Para interface gráfica, você pode usar ferramentas como o MySQL Workbench, que é compatível tanto com MySQL quanto com MariaDB. Aqui está como fazer:

### Exportar (Backup):
1. Abra o MySQL Workbench e conecte-se ao seu servidor MariaDB.
2. No menu superior, vá para `Server` > `Data Export`.
3. Selecione o banco de dados que deseja fazer backup na coluna da esquerda.
4. Escolha as opções de exportação, como onde salvar o arquivo de backup e o formato do arquivo.
5. Clique em "Start Export" ou "Iniciar Exportação" para iniciar o processo de backup.

### Importar (Restaurar):
1. Abra o MySQL Workbench e conecte-se ao seu servidor MariaDB.
2. No menu superior, vá para `Server` > `Data Import`.
3. Selecione o banco de dados onde deseja importar os dados.
4. Escolha o arquivo de backup que deseja importar.
5. Selecione as opções de importação, se necessário.
6. Clique em "Start Import" ou "Iniciar Importação" para iniciar o processo de importação.

