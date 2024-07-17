# SINTAXE
## TIPOS PRIMITIVOS:
O MariaDB é um sistema de gerenciamento de banco de dados relacional (RDBMS) amplamente utilizado. Ele suporta vários tipos de dados primitivos que podem ser usados para definir colunas em tabelas. Abaixo estão alguns dos tipos de dados primitivos mais comuns no MariaDB:

* **1. INTEGER ou INT:** Representa números inteiros, positivos ou negativos, com tamanho fixo. Pode variar em tamanho, como INT(11), INT(10), etc.
* **2. FLOAT:** Representa números de ponto flutuante com precisão simples. Pode armazenar números decimais, mas a precisão pode ser limitada.
* **3. DOUBLE:** Representa números de ponto flutuante com precisão dupla. É capaz de armazenar números decimais com maior precisão do que o tipo FLOAT.
* **4. DECIMAL ou NUMERIC:** É usado para armazenar números decimais de alta precisão. É uma opção adequada para valores monetários e cálculos que exigem alta precisão decimal.
* **5. CHAR:** Armazena uma sequência de caracteres com tamanho fixo. O tamanho é especificado entre parênteses, como CHAR(10). O espaço não utilizado é preenchido com espaços em branco.
* **6. VARCHAR:** Armazena uma sequência de caracteres com tamanho variável. O tamanho máximo é especificado entre parênteses, como VARCHAR(255). Ele ocupa apenas o espaço necessário para armazenar os dados.
* **7. TEXT:** Armazena grandes volumes de texto, como uma sequência longa de caracteres. Pode armazenar até 65.535 caracteres.
* **8. DATE:** Armazena valores de data no formato 'AAAA-MM-DD'. Pode ser usado para armazenar datas sem informações de hora.
* **9. TIME:** Armazena valores de tempo no formato 'HH:MM:SS'. Pode ser usado para armazenar valores de hora sem informações de data.
* **10. TIMESTAMP:** Armazena um valor de data e hora no formato 'AAAA-MM-DD HH:MM:SS'. Geralmente usado para registrar a data e hora em que um registro foi inserido ou atualizado.

Esses são apenas alguns dos tipos de dados primitivos suportados pelo MariaDB. Existem outros tipos, como ENUM, SET, BLOB, entre outros, que oferecem funcionalidades adicionais e opções de armazenamento.

Aqui está um exemplo de como você pode criar uma tabela no MariaDB usando os tipos de dados mencionados anteriormente, juntamente com algumas opções adicionais:

```sql
CREATE TABLE minha_tabela (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    altura FLOAT,
    salario DECIMAL(10,2),
    descricao TEXT,
    data_nascimento DATE,
    hora_atual TIME,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
```

Neste exemplo, criamos uma tabela chamada "minha_tabela" com as seguintes colunas:

- "id": Um número inteiro único que é autoincrementado.
- "nome": Uma sequência de caracteres com tamanho máximo de 255.
- "idade": Um número inteiro que representa a idade.
- "altura": Um número de ponto flutuante para representar a altura.
- "salario": Um número decimal com uma parte inteira de tamanho máximo de 10 dígitos e 2 casas decimais.
- "descricao": Uma coluna de texto para armazenar uma descrição.
- "data_nascimento": Uma data.
- "hora_atual": Uma hora específica.
- "data_atualizacao": Um registro automático da data e hora da última atualização.

A coluna "id" é definida como chave primária usando a cláusula PRIMARY KEY, garantindo que cada registro tenha um valor exclusivo para essa coluna.

Observe que essas definições são apenas um exemplo e podem ser ajustadas de acordo com as necessidades específicas do seu projeto.

## COMANDOS MAIS USADOS:
### NO BANCO DE DADOS:
Aqui estão alguns dos principais comandos do MariaDB para criação, seleção e exclusão de bancos de dados:

* **1. CREATE DATABASE:** O comando CREATE DATABASE é usado para criar um novo banco de dados no servidor.
Exemplo:
```sql
CREATE DATABASE meu_banco_de_dados;
```

* **2. USE:** O comando USE é usado para selecionar um banco de dados específico no qual você deseja trabalhar.
Exemplo:
```sql
USE meu_banco_de_dados;
```

* **3. SHOW DATABASES:** O comando SHOW DATABASES é usado para exibir uma lista de todos os bancos de dados disponíveis no servidor.
Exemplo:
```sql
SHOW DATABASES;
```

* **4. DROP DATABASE:** O comando DROP DATABASE é usado para excluir um banco de dados existente do servidor. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura do banco de dados.
Exemplo:
```sql
DROP DATABASE meu_banco_de_dados;
```

Esses são alguns dos comandos básicos do MariaDB relacionados à criação, seleção e exclusão de bancos de dados. Lembre-se de que esses comandos são específicos do MariaDB e podem variar um pouco em outros sistemas de gerenciamento de banco de dados.

### NAS TABELAS:
Aqui estão alguns dos principais comandos do MariaDB para criação, alteração e exclusão de tabelas:

* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Você precisa especificar o nome da tabela e as colunas que ela terá, juntamente com seus tipos de dados e outras opções.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id INT,
    nome VARCHAR(255),
    email VARCHAR(255)
);
```

* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Você pode adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e muito mais.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN idade INT,
MODIFY COLUMN nome VARCHAR(100),
DROP COLUMN email;
```

* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura da tabela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```

* **4. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```

* **5. RENAME TABLE:** O comando RENAME TABLE é usado para renomear uma tabela existente no banco de dados.
Exemplo:
```sql
RENAME TABLE minha_tabela TO nova_tabela;
```

* **6. SHOW TABLES:** O comando SHOW TABLES é usado para exibir uma lista de todas as tabelas existentes no banco de dados.
Exemplo:
```sql
SHOW TABLES;
```

* **7. DESC ou DESCRIBE:** O comando DESC ou DESCRIBE é usado para exibir a estrutura de uma tabela, ou seja, as colunas e seus tipos de dados.
Exemplo:
```sql
DESC minha_tabela;
```

Esses são apenas alguns dos principais comandos do MariaDB relacionados à criação, alteração e exclusão de tabelas. Existem muitos outros comandos e opções disponíveis para manipular e gerenciar bancos de dados no MariaDB.

## CATEGORIAS DE COMANDOS:
### DDL:
Os comandos DDL (Data Definition Language) são um conjunto de comandos utilizados no MariaDB para definir e gerenciar a estrutura dos objetos de um banco de dados, como tabelas, índices e restrições. Abaixo estão alguns dos principais comandos DDL do MariaDB:

* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Ele define o nome da tabela, suas colunas, tipos de dados, restrições e índices.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT
);
```

* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Pode ser usado para adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e índices, entre outras operações.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN sobrenome VARCHAR(50),
MODIFY COLUMN idade INT NOT NULL,
DROP COLUMN idade;
```

* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados juntamente com todos os dados e estrutura associados a ela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```

* **4. CREATE INDEX:** O comando CREATE INDEX é usado para criar um índice em uma ou mais colunas de uma tabela. Isso melhora a velocidade de busca e classificação dos dados.
Exemplo:
```sql
CREATE INDEX idx_nome ON minha_tabela (nome);
```

* **5. DROP INDEX:** O comando DROP INDEX é usado para excluir um índice existente de uma tabela.
Exemplo:
```sql
DROP INDEX idx_nome ON minha_tabela;
```

* **6. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```

Esses são apenas alguns dos comandos DDL mais comumente usados no MariaDB. Eles permitem criar, modificar e excluir objetos do banco de dados, bem como definir índices para otimizar o desempenho das consultas

. Os comandos DDL são essenciais para a definição e manutenção da estrutura de um banco de dados relacional.

### DML:
Os comandos DML (Data Manipulation Language) são um conjunto de comandos utilizados no MariaDB para manipular dados dentro das tabelas de um banco de dados. Abaixo estão alguns dos principais comandos DML do MariaDB:

* **1. INSERT:** O comando INSERT é usado para adicionar novos registros em uma tabela.
Exemplo:
```sql
INSERT INTO minha_tabela (id, nome, idade)
VALUES (1, 'João', 25);
```

* **2. UPDATE:** O comando UPDATE é usado para modificar os dados existentes em uma tabela. Ele permite atualizar um ou mais registros com base em uma condição.
Exemplo:
```sql
UPDATE minha_tabela
SET idade = 26
WHERE id = 1;
```

* **3. DELETE:** O comando DELETE é usado para excluir registros de uma tabela com base em uma condição específica.
Exemplo:
```sql
DELETE FROM minha_tabela
WHERE id = 1;
```

* **4. SELECT:** O comando SELECT é usado para consultar e recuperar dados de uma tabela. Ele permite especificar colunas, condições e ordens de classificação.
Exemplo:
```sql
SELECT nome, idade
FROM minha_tabela
WHERE idade > 20;
```

* **5. MERGE ou REPLACE:** O comando MERGE ou REPLACE é usado para inserir ou atualizar registros em uma tabela com base em uma condição. Ele é útil para operações de "upsert" (inserção ou atualização).
Exemplo:
```sql
REPLACE INTO minha_tabela (id, nome, idade)
VALUES (1, 'João', 26);
```

Esses são alguns dos principais comandos DML do MariaDB que permitem manipular dados dentro de tabelas. Eles são fundamentais para inserir, atualizar, excluir e consultar registros em um banco de dados relacional. Esses comandos são amplamente usados em operações diárias de manipulação de dados.

### DCL:
Os comandos DCL (Data Control Language) são um conjunto de comandos utilizados no MariaDB para controlar o acesso aos dados e gerenciar permissões de usuários. Abaixo estão alguns dos principais comandos DCL do MariaDB:

* **1. GRANT:** O comando GRANT é usado para conceder permissões a usuários ou roles (papéis) para realizar determinadas ações em objetos do banco de dados, como tabelas, visualizações e procedimentos armazenados.
Exemplo:
```sql
GRANT SELECT, INSERT, UPDATE ON minha_tabela TO 'usuario'@'localhost';
```

* **2. REVOKE:** O comando REVOKE é usado para remover permissões previamente concedidas a usuários ou roles.
Exemplo:
```sql
REVOKE SELECT, INSERT ON minha_tabela FROM 'usuario'@'localhost';
```

* **3. CREATE USER:** O comando CREATE USER é usado para criar um novo usuário no banco de dados.
Exemplo:
```sql
CREATE USER 'novo_usuario'@'localhost' IDENTIFIED BY 'senha_segura';
```

* **4. DROP USER:** O comando DROP USER é usado para excluir um usuário do banco de dados.
Exemplo:
```sql
DROP USER 'usuario'@'localhost';
```

* **5. SET PASSWORD:** O comando SET PASSWORD é usado para alterar a senha de um usuário existente.
Exemplo:
```sql
SET PASSWORD FOR 'usuario'@'localhost' = PASSWORD('nova_senha');
```

Esses são alguns dos principais comandos DCL do MariaDB que permitem controlar o acesso aos dados e gerenciar permissões de usuários. Eles são essenciais para garantir a segurança e o controle de acesso em um banco de dados relacional, permitindo que administradores definam quem pode realizar determinadas operações em objetos do banco de dados.

### TCL:
Os comandos TCL (Transaction Control Language) são um conjunto de comandos utilizados no MariaDB para gerenciar transações no banco de dados. Eles permitem controlar a execução de múltiplas operações DML como uma única unidade de trabalho, garantindo consistência e atomicidade dos dados. Abaixo estão alguns dos principais comandos TCL do MariaDB:

* **1. START TRANSACTION:** O comando START TRANSACTION é usado para iniciar uma nova transação. Todas as operações subsequentes serão parte dessa transação até que seja confirmada (committed) ou revertida (rolled back).
Exemplo:
```sql
START TRANSACTION;
```

* **2. COMMIT:** O comando COMMIT é usado para confirmar todas as operações realizadas na transação atual, tornando-as permanentes no banco de dados.
Exemplo:
```sql
COMMIT;
```

* **3. ROLLBACK:** O comando ROLLBACK é usado para reverter todas as operações realizadas na transação atual, desfazendo quaisquer alterações feitas desde o início da transação.
Exemplo:
```sql
ROLLBACK;
```

* **4. SAVEPOINT:** O comando SAVEPOINT é usado para definir um ponto de salvamento dentro de uma transação, permitindo que parte da transação seja revertida até esse ponto, sem afetar o restante da transação.
Exemplo:
```sql
SAVEPOINT meu_savepoint;
```

* **5. ROLLBACK TO SAVEPOINT:** O comando ROLLBACK TO SAVEPOINT é usado para reverter a transação até um ponto de salvamento específico.
Exemplo:
```sql
ROLLBACK TO SAVEPOINT meu_savepoint;
```

* **6. RELEASE SAVEPOINT:** O comando RELEASE SAVEPOINT é usado para remover um ponto de salvamento, tornando-o indisponível para futuras operações de rollback.
Exemplo:
```sql
RELEASE SAVEPOINT meu_savepoint;
```

Esses são alguns dos principais comandos TCL do MariaDB que permitem gerenciar transações no banco de dados. Eles são essenciais para garantir a consistência e a integridade dos dados, permitindo que múltiplas operações DML sejam tratadas como uma única unidade de trabalho.

## COMANDOS DE MARIADB VERSUS [MYSQL](https://github.com/VILHALVA/CURSO-DE-MYSQL)
### TABELA:
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

### UÉ, MYSQL E MARIADB TEM A MESMA SINTAXE?
Na maioria dos casos, a sintaxe entre MySQL e MariaDB é idêntica ou extremamente semelhante. Isso ocorre porque MariaDB foi desenvolvido como um fork do MySQL, o que significa que eles compartilham uma base de código comum e muitas características semelhantes. A equipe por trás do MariaDB manteve a compatibilidade com o MySQL para facilitar a migração entre os dois sistemas.

Portanto, para a maioria dos usuários, a transição entre MySQL e MariaDB é bastante suave, pois os comandos e a sintaxe que eles já conhecem podem ser aplicados diretamente ao outro sistema.
