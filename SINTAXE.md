# SINTAXE
Abaixo está um exemplo básico de como criar e manipular um banco de dados usando comandos SQL no MariaDB, juntamente com uma explicação de cada etapa:

1. **Conectar-se ao Banco de Dados**:
```bash
mysql -u seu_usuario -p
```
- Isso inicia o cliente MariaDB e solicita que você insira a senha do seu usuário.

2. **Criar um Banco de Dados**:
```sql
CREATE DATABASE minha_base_de_dados;
```
- Este comando cria um novo banco de dados chamado `minha_base_de_dados`.

3. **Selecionar o Banco de Dados**:
```sql
USE minha_base_de_dados;
```
- Este comando seleciona o banco de dados `minha_base_de_dados` para ser o banco de dados ativo, no qual todas as operações subsequentes serão realizadas.

4. **Criar uma Tabela**:
```sql
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);
```
- Este comando cria uma tabela chamada `usuarios` com três colunas: `id`, `nome` e `email`.
- A coluna `id` é uma chave primária que será incrementada automaticamente para cada novo registro.

5. **Inserir Dados na Tabela**:
```sql
INSERT INTO usuarios (nome, email) VALUES
('João', 'joao@example.com'),
('Maria', 'maria@example.com'),
('Pedro', 'pedro@example.com');
```
- Este comando insere três registros na tabela `usuarios`, especificando os valores para as colunas `nome` e `email`.

6. **Selecionar Dados da Tabela**:
```sql
SELECT * FROM usuarios;
```
- Este comando seleciona todos os registros da tabela `usuarios` e exibe suas colunas e valores.

7. **Atualizar um Registro na Tabela**:
```sql
UPDATE usuarios SET email = 'joao@gmail.com' WHERE nome = 'João';
```
- Este comando atualiza o endereço de e-mail do usuário com o nome "João" para "joao@gmail.com".

8. **Excluir um Registro da Tabela**:
```sql
DELETE FROM usuarios WHERE nome = 'Pedro';
```
- Este comando exclui o registro do usuário com o nome "Pedro" da tabela `usuarios`.

9. **Desconectar do Banco de Dados**:
```sql
QUIT;
```
- Este comando desconecta o cliente MariaDB do servidor de banco de dados.

Esses são apenas alguns exemplos básicos de comandos SQL que podem ser usados para criar, manipular e consultar um banco de dados no MariaDB. Esses comandos são fundamentais para o desenvolvimento e administração de bancos de dados em uma variedade de aplicativos e sistemas.