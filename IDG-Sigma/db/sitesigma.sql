-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Ago-2022 às 17:25
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ProdutoID` int(11) NOT NULL,
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

INSERT INTO `produtos` (`ProdutoID`, `Nome`, `Descricao`, `Imagem`, `Preco`, `CategoriaID`, `Ativo`) VALUES
(1, 'Alex', 'Meia (2004-2009/2013-2016)', 'alex1.jpg', 43, 2, 1),
(2, 'Bolívar', 'Zagueiro (2003-2006/2009-2012)', 'bolivar1.jpg', 40, 2, 1),
(3, 'Dalessandro', 'Meia (2008-2022)', 'dalessandro1.jpg', 33, 2, 1),
(4, 'Elías Figueroa', 'Zagueiro (1971-1976)', 'elias-figueroa1.jpg', 30, 1, 1),
(5, 'Fernandão', 'Atacante (2004-2008)', 'fernandao1.jpg', 28, 2, 1),
(6, 'Manga', 'Goleiro (1974-1976)', 'manga1.jpg', 20, 1, 1),
(7, 'Índio', 'Zagueiro (2005-2014)', 'indio1.jpg', 59, 2, 1),
(8, 'Jair', 'Atacante (1974-1981)', 'jair1.jpg', 32, 1, 1),
(9, 'Paulo César Carpegiani', 'Meio Campo (1969-1977)', 'carpegiani1.jpg', 30, 1, 1),
(10, 'Paulo Roberto Falcão', 'Volante (1973-1980)', 'falcao1.jpg', 34, 2, 1),
(11, 'Rafael Sóbis', 'Atacante (2004-2006/2010-2011/2019)', 'rafael-sobis1.jpg', 24, 2, 1),
(12, 'Valdomiro', 'Ponta direita (1968-1980)', 'valdomiro1.jpg', 44, 1, 1);

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
  ADD PRIMARY KEY (`ProdutoID`);

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
  MODIFY `ProdutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
