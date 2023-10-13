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
app.post('/CODIGO', (req, res) => {
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
