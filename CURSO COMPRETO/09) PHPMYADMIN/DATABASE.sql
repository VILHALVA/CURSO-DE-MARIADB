-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Ago-2023 às 17:36
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_cursos` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totalaulas` int UNSIGNED DEFAULT NULL,
  `ano` year DEFAULT '2023',
  PRIMARY KEY (`id_cursos`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome`, `descricao`, `carga`, `totalaulas`, `ano`) VALUES
(1, 'HTML5', 'CURSO DE HTML', 40, 37, 2014),
(2, 'ALGORITMOS', 'LÓGICA DE PROGRAMAÇÃO', 20, 15, 2014),
(3, 'PHOTOSHOP', 'CURSO DE PHOTOSHOP', 10, 8, 2014),
(4, 'PHP', 'CURSO DE PHP', 40, 20, 2010),
(5, 'JAVA', 'CURSO DE JAVA', 10, 29, 2000),
(6, 'MYSQL', 'CURSO DE BANCO DE DADOS', 30, 15, 2016),
(7, 'WORD', 'CURSO DE WORD', 40, 30, 2016),
(8, 'SAPATEADO', 'CURSO BIZARRO', 40, 30, 2018),
(9, 'COZINHA ÁRABE', 'CURSO DE CULINÁRIA', 40, 30, 2018),
(10, 'YOUTUBER', 'CURSO OBSCURO', 5, 2, 2018);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
