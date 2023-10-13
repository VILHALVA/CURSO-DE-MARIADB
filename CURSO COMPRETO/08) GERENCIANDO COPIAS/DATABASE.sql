# Fazer um backup completo do MariaDB usando mysqldump
# Substitua seu_usuario, sua_senha, nome_do_banco e caminho_para_o_arquivo.sql pelos seus valores
mysqldump -u seu_usuario -p sua_senha nome_do_banco > caminho_para_o_arquivo.sql

# Insira a senha quando solicitada
# O arquivo caminho_para_o_arquivo.sql conterá um backup completo do banco de dados

[mysqld]
log-bin=mysql-bin
