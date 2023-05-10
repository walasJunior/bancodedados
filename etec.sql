-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Maio-2023 às 03:36
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `ID` int(11) NOT NULL,
  `CodigoProduto` int(11) DEFAULT NULL,
  `QTDDisponivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`ID`, `CodigoProduto`, `QTDDisponivel`) VALUES
(1, 1, 500),
(2, 2, 500),
(3, 3, 500),
(4, 4, 500),
(5, 5, 500);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `CodigoProduto` int(11) NOT NULL,
  `NomeProduto` varchar(20) DEFAULT NULL,
  `precoUnit` decimal(5,2) DEFAULT NULL,
  `DTCriacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`CodigoProduto`, `NomeProduto`, `precoUnit`, `DTCriacao`) VALUES
(1, 'Uva', '3.00', '2023-05-09'),
(2, 'Banana', '4.00', '2023-05-09'),
(3, 'Maça', '2.00', '2023-05-09'),
(4, 'Tangerina', '6.00', '2023-05-09'),
(5, 'Ameixa', '10.00', '2023-05-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `CodigoVenda` int(11) NOT NULL,
  `CodigoProduto` int(11) DEFAULT NULL,
  `dataVenda` date DEFAULT NULL,
  `QTD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`CodigoVenda`, `CodigoProduto`, `dataVenda`, `QTD`) VALUES
(1, 1, '0000-00-00', 60),
(2, 2, '0000-00-00', 39),
(3, 3, '0000-00-00', 45),
(4, 4, '0000-00-00', 85),
(5, 5, '0000-00-00', 96);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`CodigoProduto`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`CodigoVenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
