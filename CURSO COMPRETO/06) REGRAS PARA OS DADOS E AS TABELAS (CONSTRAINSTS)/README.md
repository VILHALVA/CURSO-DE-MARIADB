# REGRAS PARA OS DADOS E AS TABELAS (CONSTRAINSTS)
As restrições (constraints) em um banco de dados MariaDB são usadas para impor regras e garantir a integridade dos dados armazenados nas tabelas. Aqui estão as principais restrições que podem ser aplicadas em tabelas no MariaDB:

1. **PRIMARY KEY:**
   
   A restrição `PRIMARY KEY` é usada para identificar exclusivamente cada registro em uma tabela. Uma tabela pode ter apenas uma chave primária e não pode conter valores nulos.

   Exemplo:
   ```sql
   CREATE TABLE exemplo (
       id INT PRIMARY KEY,
       nome VARCHAR(255)
   );
   ```

2. **FOREIGN KEY:**
   
   A restrição `FOREIGN KEY` é usada para criar uma relação entre duas tabelas, garantindo que os valores em uma coluna correspondam aos valores em outra coluna em uma tabela relacionada.

   Exemplo:
   ```sql
   CREATE TABLE tabela1 (
       id INT PRIMARY KEY,
       nome VARCHAR(255)
   );

   CREATE TABLE tabela2 (
       id INT PRIMARY KEY,
       tabela1_id INT,
       FOREIGN KEY (tabela1_id) REFERENCES tabela1(id)
   );
   ```

3. **UNIQUE:**
   
   A restrição `UNIQUE` garante que todos os valores em uma coluna sejam diferentes. Ou seja, nenhum valor duplicado é permitido na coluna.

   Exemplo:
   ```sql
   CREATE TABLE exemplo (
       id INT,
       email VARCHAR(255) UNIQUE
   );
   ```

4. **NOT NULL:**
   
   A restrição `NOT NULL` garante que uma coluna não possa conter valores nulos.

   Exemplo:
   ```sql
   CREATE TABLE exemplo (
       id INT PRIMARY KEY,
       nome VARCHAR(255) NOT NULL
   );
   ```

5. **CHECK:**
   
   A restrição `CHECK` é usada para garantir que os valores em uma coluna atendam a uma condição específica.

   Exemplo:
   ```sql
   CREATE TABLE exemplo (
       id INT,
       idade INT CHECK (idade >= 18)
   );
   ```

Essas são algumas das principais restrições que podem ser aplicadas em tabelas no MariaDB. Ao criar suas tabelas, você pode utilizar essas restrições para garantir a integridade dos seus dados e impor regras específicas para o seu banco de dados.