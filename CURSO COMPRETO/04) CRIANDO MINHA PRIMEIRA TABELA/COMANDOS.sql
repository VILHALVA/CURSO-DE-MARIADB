-- Cria o banco de dados "BANCO01"
CREATE DATABASE BANCO01;

-- Cria a tabela "clientes" com as colunas id, nome e email
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Coluna para o ID único de cada cliente
    nome VARCHAR(255) NOT NULL,         -- Coluna para o nome do cliente (não pode ser nulo)
    email VARCHAR(255) NOT NULL         -- Coluna para o email do cliente (não pode ser nulo)
);
