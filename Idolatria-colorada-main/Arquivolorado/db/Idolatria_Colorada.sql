-- phpMyAdmin SQL Dump
-- version 127.0.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jul-2022 às 17:31
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitesigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`, `Ativo`) VALUES
(1, 'Alex', 1),
(2, 'Benitez', 1),
(3, 'Bolivar', 1),
(4, 'Carlitos', 1),
(6, 'Carpegiani', 1),
(7, 'Chico Spina', 1),
(8, 'Claudiomiro', 1),
(9, 'Dalessandro', 1),
(10, 'Damião', 1),
(11, 'Elias Figueroa', 1);
(12, 'Escurinho', 1);
(13, 'Fabiano Eller', 1);
(14, 'Falcão', 1);
(15, 'Fernandão', 1);
(16, 'Gabiru', 1);
(17, 'Iarley', 1);
(18, 'Índio', 1);
(19, 'Jair', 1);
(20, 'Larry', 1);
(21, 'Lula', 1);
(22, 'Manga', 1);
(23, 'Mauro Galvão', 1);
(24, 'Nilmar', 1);
(25, 'Rafael Sóbis', 1);
(26, 'Ruben Paz', 1);
(27, 'Taffarel', 1);
(28, 'Tesourinha', 1);
(29, 'Tinga', 1);
(30, 'Valdomiro', 1);
-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `Produto` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Descricao` longtext NOT NULL,
  `Imagem` varchar(200) NOT NULL,
  `Preco` float NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`Produto`, `Nome`, `Descricao`, `Imagem`, `Preco`, `CategoriaID`, `Ativo`) VALUES
(1, 'Alex', 'Meia', 'alex.jpg', 1520040000, 1, 1),
(2, 'Benitez', 'Goleiro', 'benitez.jpg', 1246000000, 1, 1),
(3, 'Bolívar', 'Zagueiro', 'bolivar.jpg', 1320040000, 1, 1),
(4, 'Carlitos', 'Atacante', 'carlitos.jpg', 1023000000, 1, 1);
(5, 'Carpegiani', 'Volante', 'carpegiani.jpg', 1023000000, 1, 1);
(6, 'Chico Spina', 'Atacante', 'chico-spina.jpg', 1023000000, 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;