-- Criação da database "FRASES"
CREATE DATABASE FRASES;

-- Criação da tabela autores
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária para identificar exclusivamente cada autor
    nome VARCHAR(90) NOT NULL           -- Nome do autor (não pode ser nulo)
);

-- Criação da tabela categorias
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária para identificar exclusivamente cada categoria
    categoria LONGTEXT                   -- Descrição da categoria
);

-- Criação da tabela frases
CREATE TABLE frases (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária para identificar exclusivamente cada frase
    frase LONGTEXT NOT NULL,            -- Texto da frase (não pode ser nulo)
    autor_id INT,                        -- Chave estrangeira para o autor da frase
    categoria_id INT,                    -- Chave estrangeira para a categoria da frase
    FOREIGN KEY (autor_id) REFERENCES autores(id),         -- Chave estrangeira para a tabela autores
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)   -- Chave estrangeira para a tabela categorias
);

-- Criação da tabela usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Chave primária para identificar exclusivamente cada usuário
    email VARCHAR(255) NOT NULL,        -- Endereço de e-mail do usuário (não pode ser nulo)
    nome VARCHAR(255) NOT NULL,         -- Nome do usuário (não pode ser nulo)
    senha VARCHAR(255) NOT NULL         -- Senha do usuário (não pode ser nula)
);
