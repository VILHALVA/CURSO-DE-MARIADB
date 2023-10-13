# MARIADB COM PHP - FORMULARIO
Integrar o MariaDB com PHP em um formulário é uma tarefa comum ao criar aplicativos da web que precisam coletar, armazenar e recuperar dados de um banco de dados. Abaixo, vou fornecer um exemplo simples de como criar um formulário HTML e usar o PHP para conectar ao MariaDB, inserir dados do formulário no banco de dados e recuperar esses dados. Certifique-se de configurar um ambiente de servidor web que suporte PHP e tenha acesso ao MariaDB antes de prosseguir.

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
    <form method="post" action="processar_formulario.php">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome"><br>

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="email"><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>
```

**2. Crie um arquivo PHP para processar o formulário (`processar_formulario.php`):**

Aqui, você processará os dados do formulário e os armazenará no banco de dados MariaDB:

```php
<?php
// Conectar ao banco de dados MariaDB
$host = "localhost";  // Host do banco de dados
$usuario = "seu_usuario";  // Nome de usuário do banco de dados
$senha = "sua_senha";  // Senha do banco de dados
$banco = "seu_banco";  // Nome do banco de dados

// Conectar ao banco de dados
$mysqli = new mysqli($host, $usuario, $senha, $banco);

// Verificar a conexão
if ($mysqli->connect_error) {
    die("Erro de conexão com o banco de dados: " . $mysqli->connect_error);
}

// Processar dados do formulário
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $email = $_POST["email"];

    // Inserir dados no banco de dados
    $sql = "INSERT INTO tabela (nome, email) VALUES (?, ?)";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("ss", $nome, $email);
    
    if ($stmt->execute()) {
        echo "Dados inseridos com sucesso!";
    } else {
        echo "Erro ao inserir dados: " . $stmt->error;
    }

    // Fechar a instrução e a conexão com o banco de dados
    $stmt->close();
    $mysqli->close();
}
?>
```

Lembre-se de substituir `"localhost"`, `"seu_usuario"`, `"sua_senha"`, `"seu_banco"`, `"tabela"` e os campos do formulário pelos valores adequados para o seu ambiente.

**3. Crie o banco de dados:**
Peço desculpas pela omissão dos comandos SQL. Aqui estão os comandos SQL para criar um banco de dados e uma tabela para o formulário:

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

Certifique-se de executar esses comandos SQL no seu servidor MariaDB antes de executar o formulário PHP. Isso garantirá que o banco de dados e a tabela estejam criados e prontos para receber os dados do formulário.

**4. Execute o formulário:**

- Crie um banco de dados MariaDB com uma tabela que corresponda à estrutura do seu formulário.
- Configure seu servidor web para servir o formulário HTML.
- Acesse o formulário, preencha os campos e clique em "Enviar".
- Os dados serão processados pelo arquivo PHP e inseridos no banco de dados MariaDB.

Este é um exemplo simples de integração de um formulário HTML com o MariaDB usando PHP. Você pode estender e personalizar este exemplo de acordo com os requisitos específicos do seu projeto. Certifique-se de considerar medidas de segurança, como validação de entrada e escapamento de dados, ao trabalhar com formulários e bancos de dados em um ambiente de produção.