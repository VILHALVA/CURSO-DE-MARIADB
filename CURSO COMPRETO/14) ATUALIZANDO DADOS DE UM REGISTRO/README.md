# ATUALIZANDO DADOS DE UM REGISTRO
Para atualizar dados de um registro existente em uma tabela, você pode usar a cláusula `UPDATE`. Aqui está um exemplo de como atualizar dados de um registro em uma tabela:

Suponha que você queira atualizar o email de um usuário na tabela `usuarios`. Por exemplo, vamos atualizar o email do usuário com ID 1 para "novo_email@example.com":

```sql
UPDATE usuarios
SET email = 'novo_email@example.com'
WHERE id = 1;
```

Este comando irá atualizar o email do usuário com ID 1 na tabela `usuarios` para "novo_email@example.com".

Além disso, você pode atualizar várias colunas de uma vez e adicionar mais critérios de filtro conforme necessário. Por exemplo, se você quiser atualizar o nome e a senha de um usuário com base no email:

```sql
UPDATE usuarios
SET nome = 'Novo Nome', senha = 'nova_senha'
WHERE email = 'novo_email@example.com';
```

Isso atualizará o nome e a senha do usuário na tabela `usuarios` com o email "novo_email@example.com".

Certifique-se sempre de adicionar uma cláusula `WHERE` para garantir que você esteja atualizando os registros corretos na tabela. Se não houver uma cláusula `WHERE`, todos os registros da tabela serão atualizados.
