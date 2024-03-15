# COMANDOS DE MARIADB VERSUS MYSQL
## TABELA:
Aqui está uma tabela comparativa dos principais comandos entre MySQL e MariaDB:

| Operação             | MySQL                                      | MariaDB                                   |
|----------------------|--------------------------------------------|-------------------------------------------|
| Criar Banco de Dados | `CREATE DATABASE database_name;`          | `CREATE DATABASE database_name;`         |
| Usar Banco de Dados  | `USE database_name;`                       | `USE database_name;`                     |
| Criar Tabela         | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` |
| Inserir Registro     | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` |
| Selecionar Registro(s) | `SELECT * FROM table_name WHERE condition;` | `SELECT * FROM table_name WHERE condition;` |
| Atualizar Registro   | `UPDATE table_name SET column1 = value1 WHERE condition;` | `UPDATE table_name SET column1 = value1 WHERE condition;` |
| Excluir Registro     | `DELETE FROM table_name WHERE condition;`  | `DELETE FROM table_name WHERE condition;` |
| Excluir Tabela       | `DROP TABLE table_name;`                   | `DROP TABLE table_name;`                 |
| Listar Bancos de Dados | `SHOW DATABASES;`                         | `SHOW DATABASES;`                        |
| Listar Tabelas       | `SHOW TABLES;`                              | `SHOW TABLES;`                            |

Essa tabela compara os comandos básicos mais comuns entre MySQL e MariaDB. É importante observar que, em geral, a sintaxe é bastante semelhante, pois MariaDB foi originalmente forked do MySQL e visa ser uma substituição compatível. No entanto, existem algumas diferenças e recursos adicionais em MariaDB. Sempre consulte a documentação oficial para obter detalhes específicos e atualizados sobre os comandos.

## UÉ, OS DOIS TEM A MESMA SINTAXE?
Na maioria dos casos, a sintaxe entre MySQL e MariaDB é idêntica ou extremamente semelhante. Isso ocorre porque MariaDB foi desenvolvido como um fork do MySQL, o que significa que eles compartilham uma base de código comum e muitas características semelhantes. A equipe por trás do MariaDB manteve a compatibilidade com o MySQL para facilitar a migração entre os dois sistemas.

Portanto, para a maioria dos usuários, a transição entre MySQL e MariaDB é bastante suave, pois os comandos e a sintaxe que eles já conhecem podem ser aplicados diretamente ao outro sistema.
