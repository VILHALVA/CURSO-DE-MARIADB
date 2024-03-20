-- Exemplo 1: Selecionando todas as frases da tabela frases
SELECT frase
FROM frases;

-- Exemplo 2: Selecionando o nome de todos os autores únicos da tabela autores
SELECT DISTINCT nome
FROM autores;

-- Exemplo 3: Selecionando todas as frases do autor "Machado de Assis"
SELECT frase 
FROM frases 
WHERE autor_id = (SELECT id FROM autores WHERE nome = 'Machado de Assis');

-- Exemplo 4: Selecionando todas as frases com mais de 20 caracteres
SELECT id, frase 
FROM frases 
WHERE LENGTH(frase) > 20;

-- Exemplo 5: Selecionando todas as frases do autor "Machado de Assis" que também são da categoria "Romance"
SELECT frase 
FROM frases 
WHERE autor_id = (SELECT id FROM autores WHERE nome = 'Machado de Assis')
AND categoria_id = (SELECT id FROM categorias WHERE categoria = 'Romance');

-- Exemplo 6: Selecionando todas as frases do autor "Clarice Lispector" ou "Carlos Drummond de Andrade"
SELECT frase 
FROM frases 
WHERE autor_id IN (SELECT id FROM autores WHERE nome IN ('Clarice Lispector', 'Carlos Drummond de Andrade'));

-- Exemplo 7: Selecionando todas as frases que contêm a palavra "vida"
SELECT frase 
FROM frases 
WHERE frase LIKE '%vida%';

-- Exemplo 8: Selecionando o número total de frases na tabela frases
SELECT COUNT(*) AS total_frases
FROM frases;

-- Exemplo 9: Selecionando o autor e a categoria de cada frase
SELECT autores.nome AS autor, categorias.categoria AS categoria, frases.frase
FROM frases
JOIN autores ON frases.autor_id = autores.id
JOIN categorias ON frases.categoria_id = categorias.id;

-- Exemplo 10: Selecionando os 5 primeiros registros da tabela frases ordenados por ordem alfabética da frase
SELECT *
FROM frases
ORDER BY frase
LIMIT 5;
