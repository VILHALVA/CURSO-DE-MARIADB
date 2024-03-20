# SELECIONANDO E FILTRANDO DADOS DA TABELA (SELECT)
Para selecionar e filtrar dados de uma tabela no banco de dados, você pode usar a cláusula `SELECT` junto com a cláusula `WHERE` para especificar critérios de filtragem. Aqui está um exemplo de como selecionar dados de uma tabela:

Suponha que você queira selecionar todas as frases de um autor específico da tabela `frases`. Por exemplo, vamos selecionar todas as frases do autor "Machado de Assis":

```sql
SELECT frase 
FROM frases 
WHERE autor_id = (SELECT id FROM autores WHERE nome = 'Machado de Assis');
```

Este comando irá selecionar todas as frases da tabela `frases` onde o `autor_id` corresponde ao `id` do autor "Machado de Assis" na tabela `autores`.

Além disso, você pode selecionar várias colunas e adicionar mais critérios de filtro conforme necessário. Por exemplo, se você quiser selecionar o ID e a frase de todas as frases com mais de 20 caracteres:

```sql
SELECT id, frase 
FROM frases 
WHERE LENGTH(frase) > 20;
```

Isso selecionará o ID e a frase de todas as frases na tabela `frases` que têm mais de 20 caracteres.

Você também pode usar operadores lógicos como `AND` e `OR` para combinar condições de filtragem mais complexas. Por exemplo, para selecionar todas as frases do autor "Machado de Assis" que também são da categoria "Romance":

```sql
SELECT frase 
FROM frases 
WHERE autor_id = (SELECT id FROM autores WHERE nome = 'Machado de Assis')
AND categoria_id = (SELECT id FROM categorias WHERE categoria = 'Romance');
```

Este comando irá selecionar todas as frases da tabela `frases` onde o `autor_id` corresponde ao `id` do autor "Machado de Assis" e o `categoria_id` corresponde ao `id` da categoria "Romance".