# MARIADB COM NODEJS - FORMULARIO
Integrar o MariaDB com Node.js em um formulário é uma tarefa comum ao criar aplicativos da web que precisam coletar, armazenar e recuperar dados de um banco de dados. Abaixo, vou fornecer um exemplo simples de como criar um formulário HTML e usar o Node.js com o módulo "mysql" para conectar-se ao MariaDB, inserir dados do formulário no banco de dados e recuperar esses dados. Certifique-se de que você tenha o Node.js instalado e tenha acesso ao MariaDB antes de prosseguir.

**1. Crie um formulário HTML:**

Aqui está um exemplo de um formulário HTML básico:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Exemplo</title>
</head>
<body>
    <h1>Formulário de Exemplo</h1>
    <form method="post" action="/processar_formulario">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome"><br>

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="email"><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>
```

**2. Configure o servidor Node.js:**

Certifique-se de configurar um servidor Node.js para lidar com as solicitações do formulário e se conectar ao MariaDB. Aqui está um exemplo de como você pode criar um servidor simples com o Node.js:

```javascript
const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 3000;

// Configuração do banco de dados
const db = mysql.createConnection({
    host: 'localhost',
    user: 'seu_usuario',
    password: 'sua_senha',
    database: 'seu_banco'
});

// Conectar ao banco de dados
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Conectado ao banco de dados');
});

// Processar o formulário
app.post('/processar_formulario', (req, res) => {
    const { nome, email } = req.body;

    // Inserir dados no banco de dados
    const insertQuery = `INSERT INTO sua_tabela (nome, email) VALUES ('${nome}', '${email}')`;
    
    db.query(insertQuery, (err, result) => {
        if (err) {
            throw err;
        }
        console.log('Dados inseridos com sucesso.');
        res.redirect('/'); // Redirecionar de volta para a página do formulário
    });
});

// Iniciar o servidor
app.listen(port, () => {
    console.log(`Servidor rodando em http://localhost:${port}`);
});
```

Certifique-se de substituir `'localhost'`, `'seu_usuario'`, `'sua_senha'`, `'seu_banco'` e `'sua_tabela'` pelos valores adequados para o seu ambiente.

**3. Criar o banco de dados:**
 Aqui estão os comandos SQL com comentários explicativos para criar um banco de dados e uma tabela para o formulário:

**1. Criar um banco de dados no MariaDB:**

Você pode criar um banco de dados usando o seguinte comando SQL:

```sql
CREATE DATABASE seu_banco;
```

Substitua `seu_banco` pelo nome que deseja para o banco de dados.

**2. Criar uma tabela no banco de dados:**

Aqui está um exemplo de comando SQL para criar uma tabela no seu banco de dados:

```sql
USE seu_banco;

CREATE TABLE sua_tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
```

Substitua `seu_banco` pelo nome do banco de dados que você criou e `sua_tabela` pelo nome que deseja para a tabela. Esta tabela possui três colunas: `id`, `nome` e `email`.

Certifique-se de executar esses comandos SQL no seu servidor MariaDB antes de implementar o formulário Node.js. Eles estabelecerão o banco de dados e a estrutura da tabela necessários para armazenar os dados do formulário.

**4. Execute o formulário:**

- Execute o servidor Node.js com `node nome_do_arquivo.js`.
- Configure seu servidor web para servir o formulário HTML.
- Acesse o formulário, preencha os campos e clique em "Enviar."
- Os dados serão processados pelo servidor Node.js e inseridos no banco de dados MariaDB.

Este é um exemplo simples de integração de um formulário HTML com o MariaDB usando Node.js. Você pode estender e personalizar este exemplo de acordo com os requisitos específicos do seu projeto. Certifique-se de considerar medidas de segurança, como validação de entrada e proteção contra injeção de SQL, ao trabalhar com formulários e bancos de dados em um ambiente de produção.