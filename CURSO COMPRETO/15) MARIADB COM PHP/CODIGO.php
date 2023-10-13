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
