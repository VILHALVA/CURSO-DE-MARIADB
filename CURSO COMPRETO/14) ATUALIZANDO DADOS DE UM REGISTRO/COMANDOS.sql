-- Atualizando os nomes da tabela autores:
UPDATE autores
SET nome = CASE
    WHEN id = 9 THEN 'Jorge Amado 1'
    WHEN id = 10 THEN 'Cecília Meireles 1'
    ELSE nome
    END
WHERE id IN (9, 10);

-- Atualizando os nomes da tabela autores novamente:
UPDATE autores
SET nome = CASE
    WHEN id = 9 THEN 'Jorge Amado'
    WHEN id = 10 THEN 'Cecília Meireles'
    ELSE nome
    END
WHERE id IN (9, 10);
