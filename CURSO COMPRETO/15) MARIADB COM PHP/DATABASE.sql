-- Criar um banco de dados chamado "seu_banco"
CREATE DATABASE seu_banco;

-- Usar o banco de dados "seu_banco" para criar a tabela "sua_tabela"
USE seu_banco;

-- Criar a tabela "sua_tabela" com colunas para ID, Nome e Email
CREATE TABLE sua_tabela (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID autoincrementado
    nome VARCHAR(255) NOT NULL, -- Nome do cliente (não pode ser nulo)
    email VARCHAR(255) NOT NULL -- Endereço de e-mail do cliente (não pode ser nulo)
);
