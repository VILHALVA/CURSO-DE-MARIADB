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


-- Copiando estrutura do banco de dados para frases
CREATE DATABASE IF NOT EXISTS `frases` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `frases`;

-- Copiando estrutura para tabela frases.autores
CREATE TABLE IF NOT EXISTS `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela frases.autores: ~10 rows (aproximadamente)
INSERT INTO `autores` (`id`, `nome`) VALUES
	(1, 'Machado de Assis'),
	(2, 'Clarice Lispector'),
	(3, 'Guimarães Rosa'),
	(4, 'Lima Barreto'),
	(5, 'Carlos Drummond de Andrade'),
	(6, 'Graciliano Ramos'),
	(7, 'Érico Veríssimo'),
	(8, 'Rachel de Queiroz'),
	(9, 'Jorge Amado'),
	(10, 'Cecília Meireles');

-- Copiando estrutura para tabela frases.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela frases.categorias: ~10 rows (aproximadamente)
INSERT INTO `categorias` (`id`, `categoria`) VALUES
	(1, 'Romance'),
	(2, 'Conto'),
	(3, 'Poesia'),
	(4, 'Crônica'),
	(5, 'Ficção Científica'),
	(6, 'Fantasia'),
	(7, 'Biografia'),
	(8, 'Drama'),
	(9, 'Terror'),
	(10, 'Ensaios');

-- Copiando estrutura para tabela frases.frases
CREATE TABLE IF NOT EXISTS `frases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frase` longtext NOT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `frases_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`),
  CONSTRAINT `frases_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela frases.frases: ~10 rows (aproximadamente)
INSERT INTO `frases` (`id`, `frase`, `autor_id`, `categoria_id`) VALUES
	(1, 'As pessoas não morrem, ficam encantadas.', 1, 1),
	(2, 'A liberdade é pouco. O que eu desejo ainda não tem nome.', 2, 3),
	(3, 'Viver é negócio muito perigoso.', 3, 1),
	(4, 'As grandes almas têm vontades; as fracas, apenas desejos.', 4, 7),
	(5, 'No meio do caminho tinha uma pedra.', 5, 3),
	(6, 'O que mais preocupa não é o grito dos violentos, dos corruptos, dos desonestos, dos sem-caráter, dos sem-ética. O que mais preocupa é o silêncio dos bons.', 6, 7),
	(7, 'A vida é feita de escolhas. Quando você dá um passo à frente, inevitavelmente alguma coisa fica para trás.', 7, 7),
	(8, 'Nunca digas que esqueceste um amor diga apenas que consegue falar nele sem chorar.', 8, 4),
	(9, 'O mundo é como um espelho que devolve a cada pessoa o reflexo de seus próprios pensamentos.', 9, 7),
	(10, 'O destino dos homens é feito de momentos felizes, toda a vida os tem, mas não de épocas felizes.', 10, 1);

-- Copiando estrutura para tabela frases.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela frases.usuarios: ~10 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `email`, `nome`, `senha`) VALUES
	(1, 'usuario1@example.com', 'Maria', 'senha123'),
	(2, 'usuario2@example.com', 'José', 'senha456'),
	(3, 'usuario3@example.com', 'Ana', 'senha789'),
	(4, 'usuario4@example.com', 'Carlos', 'senha101112'),
	(5, 'usuario5@example.com', 'Juliana', 'senha131415'),
	(6, 'usuario6@example.com', 'Lucas', 'senha161718'),
	(7, 'usuario7@example.com', 'Patrícia', 'senha192021'),
	(8, 'usuario8@example.com', 'Roberto', 'senha222324'),
	(9, 'usuario9@example.com', 'Fernanda', 'senha252627'),
	(10, 'usuario10@example.com', 'Gustavo', 'senha282930');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
