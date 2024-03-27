-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           11.3.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para banco01
CREATE DATABASE IF NOT EXISTS `banco01` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `banco01`;

-- Copiando estrutura para tabela banco01.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela banco01.clientes: ~10 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `email`) VALUES
	(1, 'João Silva', 'joao@example.com'),
	(2, 'Maria Oliveira', 'maria@example.com'),
	(3, 'Pedro Santos', 'pedro@example.com'),
	(4, 'Ana Souza', 'ana@example.com'),
	(5, 'Luiz Costa', 'luiz@example.com'),
	(6, 'Carla Lima', 'carla@example.com'),
	(7, 'Rafael Pereira', 'rafael@example.com'),
	(8, 'Juliana Fernandes', 'juliana@example.com'),
	(9, 'Antônio Almeida', 'antonio@example.com'),
	(10, 'Amanda Rocha', 'amanda@example.com');

-- Copiando estrutura para tabela banco01.funcionarios
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela banco01.funcionarios: ~10 rows (aproximadamente)
INSERT INTO `funcionarios` (`id`, `nome`, `idade`, `email`) VALUES
	(1, 'Carlos Oliveira', 30, 'carlos@example.com'),
	(2, 'Fernanda Silva', 25, 'fernanda@example.com'),
	(3, 'Gustavo Santos', 35, 'gustavo@example.com'),
	(4, 'Patrícia Lima', 28, 'patricia@example.com'),
	(5, 'Rodrigo Costa', 32, 'rodrigo@example.com'),
	(6, 'Camila Pereira', 29, 'camila@example.com'),
	(7, 'Mariana Almeida', 27, 'mariana@example.com'),
	(8, 'Lucas Fernandes', 31, 'lucas@example.com'),
	(9, 'Aline Souza', 26, 'aline@example.com'),
	(10, 'Renato Vieira', 33, 'renato@example.com');

-- Copiando estrutura para tabela banco01.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente` (`cliente_id`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela banco01.produtos: ~10 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `nome`, `quantidade`, `valor`, `cliente_id`) VALUES
	(1, 'Smartphone Samsung Galaxy S21', NULL, 1599.99, 1),
	(2, 'Notebook Dell Inspiron 15', NULL, 2499.99, 2),
	(3, 'Smart TV LG 55" 4K', NULL, 1999.99, 3),
	(4, 'Console de Videogame PlayStation 5', NULL, 3999.99, 4),
	(5, 'Fone de Ouvido sem Fio Apple AirPods Pro', NULL, 1199.99, 5),
	(6, 'Câmera DSLR Canon EOS Rebel T7', NULL, 1899.99, 6),
	(7, 'Tablet Apple iPad Pro 12.9"', NULL, 1099.99, 7),
	(8, 'Monitor Gamer ASUS ROG Swift', NULL, 799.99, 8),
	(9, 'Impressora Multifuncional HP OfficeJet Pro', NULL, 299.99, 9),
	(10, 'Relógio Inteligente Fitbit Versa 3', NULL, 249.99, 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
