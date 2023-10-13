# MODELO RELACIONAL:
Um modelo relacional é um modelo de dados usado em sistemas de gerenciamento de banco de dados (DBMS) que representa os dados em forma de tabelas bidimensionais. Cada tabela é conhecida como uma relação, e os dados são organizados em linhas (tuplas) e colunas (atributos). O modelo relacional é amplamente utilizado em sistemas de banco de dados, incluindo o MariaDB e o MySQL. Aqui estão alguns conceitos-chave do modelo relacional:

1. **Tabelas (Relações):** As tabelas são a estrutura central do modelo relacional. Cada tabela representa uma entidade específica e seus atributos. Por exemplo, uma tabela "Clientes" pode conter informações sobre os clientes, como nome, endereço, e-mail, etc.

2. **Linhas (Tuplas):** Cada linha em uma tabela representa um registro ou instância de dados. É uma coleção de valores para cada atributo na tabela. Por exemplo, uma linha na tabela "Clientes" pode representar um cliente individual.

3. **Colunas (Atributos):** Cada coluna em uma tabela representa um atributo específico ou campo de dados. Por exemplo, a tabela "Clientes" pode ter colunas como "Nome", "Endereço" e "E-mail".

4. **Chave Primária:** A chave primária é um ou mais atributos que identificam exclusivamente cada registro em uma tabela. É usada para garantir a unicidade dos registros e permite a referência a registros específicos de outras tabelas.

5. **Chave Estrangeira:** A chave estrangeira é um atributo em uma tabela que estabelece uma relação com outra tabela. Ela é usada para criar associações entre tabelas e garantir a integridade referencial.

6. **Integridade Referencial:** A integridade referencial é a capacidade de garantir que as relações entre tabelas sejam mantidas de forma consistente. Isso é alcançado usando chaves primárias e chaves estrangeiras para garantir que os dados estejam relacionados corretamente.

7. **Normalização:** A normalização é o processo de organizar os dados em tabelas para eliminar a redundância e garantir a eficiência e a integridade dos dados. Ela envolve a divisão de uma tabela em várias tabelas menores e a criação de relacionamentos.

8. **SQL (Structured Query Language):** O SQL é a linguagem usada para consultar, inserir, atualizar e excluir dados em um banco de dados relacional. Ele fornece comandos como `SELECT`, `INSERT`, `UPDATE` e `DELETE` para interagir com os dados.

O modelo relacional é altamente estruturado e fornece um método organizado e eficiente para armazenar e recuperar dados. Ele é amplamente adotado em sistemas de banco de dados em todo o mundo devido à sua flexibilidade e capacidade de representar uma ampla variedade de dados de maneira consistente. Compreender os conceitos fundamentais do modelo relacional é essencial para projetar e trabalhar com bancos de dados em sistemas como o MariaDB.