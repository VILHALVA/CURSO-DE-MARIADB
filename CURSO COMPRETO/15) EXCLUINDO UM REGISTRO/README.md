# EXCLUINDO UM REGISTRO
Para excluir um registro de uma tabela, você pode usar a cláusula `DELETE`. Aqui está um exemplo de como excluir um registro de uma tabela:

Suponha que você queira excluir um autor específico da tabela `autores`. Por exemplo, vamos excluir o autor com ID 1:

```sql
DELETE FROM autores
WHERE id = 1;
```

Este comando irá excluir o registro na tabela `autores` onde o ID é igual a 1.

Se você quiser excluir todos os registros de uma tabela, você pode usar a seguinte sintaxe:

```sql
DELETE FROM nome_da_tabela;
```

No entanto, tenha cuidado ao usar esta sintaxe, pois ela excluirá todos os registros da tabela sem exceção. Certifique-se de usar a cláusula `WHERE` para especificar quais registros devem ser excluídos quando necessário.