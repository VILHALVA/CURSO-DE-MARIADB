-- Cria a tabela "funcionarios" com as colunas id, nome e email
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Coluna para o ID único de cada cliente
    nome VARCHAR(255) NOT NULL,         -- Coluna para o nome do cliente (não pode ser nulo)
    email VARCHAR(255) NOT NULL         -- Coluna para o email do cliente (não pode ser nulo)
);

-- Para alterar a tabela "funcionarios" substituindo a coluna "email" pela coluna "idade", você pode usar o comando ALTER TABLE. Aqui está o comando completo:
ALTER TABLE funcionarios
CHANGE COLUMN email idade INT NOT NULL;

-- Para adicionar a coluna de telefone na tabela "funcionarios", você pode usar o comando ALTER TABLE:
ALTER TABLE funcionarios
ADD telefone VARCHAR(20);

-- Para visualizar a estrutura da tabela "funcionarios", você pode usar o comando DESCRIBE ou SHOW CREATE TABLE.
DESCRIBE funcionarios;
SHOW CREATE TABLE funcionarios;

-- Agora vamos apagar a coluna telefone da tabela funcionarios:
ALTER TABLE funcionarios
DROP COLUMN telefone;

-- Depois de brincar um pouco, podemos apagar a tabela "funcionarios":
DROP TABLE funcionarios;


