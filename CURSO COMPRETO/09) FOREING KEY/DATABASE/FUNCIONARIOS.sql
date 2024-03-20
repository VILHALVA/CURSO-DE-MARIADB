-- Modificando a tabela:
ALTER TABLE funcionarios
MODIFY COLUMN id INT AUTO_INCREMENT;

-- Adicionando dados na tabela "Funcionarios":
INSERT INTO funcionarios (nome, email, idade) VALUES
('Carlos Oliveira', 'carlos@example.com', 30),
('Fernanda Silva', 'fernanda@example.com', 25),
('Gustavo Santos', 'gustavo@example.com', 35),
('Patrícia Lima', 'patricia@example.com', 28),
('Rodrigo Costa', 'rodrigo@example.com', 32),
('Camila Pereira', 'camila@example.com', 29),
('Mariana Almeida', 'mariana@example.com', 27),
('Lucas Fernandes', 'lucas@example.com', 31),
('Aline Souza', 'aline@example.com', 26),
('Renato Vieira', 'renato@example.com', 33);
