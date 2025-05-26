-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Maio-2025 às 18:51
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Lacticíneos'),
(2, 'Limpeza'),
(3, 'Frios'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Eletroeletrônicos'),
(9, 'Bebidas'),
(11, 'Congelados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(255) DEFAULT NULL,
  `qtde_produto` int(11) DEFAULT NULL,
  `preco_produto` decimal(10,2) DEFAULT NULL,
  `marca_produto` varchar(255) DEFAULT NULL,
  `fk_categorias_id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `qtde_produto`, `preco_produto`, `marca_produto`, `fk_categorias_id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em pó', 3, 25.00, 'OMO', 2, 'un'),
(2, 'Queijo mussarela', 10, 32.00, 'Presidente', 1, 'kg'),
(3, 'Mortadela Bologna Defumada', 5, 7.20, 'Perdigão', 3, 'kg'),
(4, 'Iogurte Natural', 124, 3.79, 'Vigor', 1, 'un'),
(5, 'Milho Verde em Conserva', 142, 3.29, 'Quero', 4, 'un'),
(6, 'Maçã Gala', 10, 7.50, 'Produto de Agricultura Local', 6, 'kg'),
(7, 'Presunto Parma', 200, 28.90, 'Seara', 3, 'kg'),
(8, 'Alcatra', 1, 35.90, 'Friboi', 5, 'kg'),
(9, 'Detergente Líquido Neutro', 49, 2.99, 'Ypê', 2, 'un'),
(10, 'Sardinha em Óleo', 85, 6.50, 'Coqueiro', 4, 'un'),
(11, 'Filé de Peito de Frango Congelado', 5, 18.90, 'Seara', 5, 'kg'),
(21, 'Cenoura', 15, 3.20, 'Fazenda Natural', 6, 'kg'),
(22, 'Liquidificador 800W com 12 velocidades', 5, 199.00, 'Mondial', 8, 'un'),
(23, 'Sabonete Líquido Hidratante', 25, 14.90, 'Dove', 7, 'un'),
(30, 'Desodorante Aerossol Antitranspirante', 19, 11.50, 'Rexona', 7, 'un'),
(31, 'Smart TV 50\" LED 4K UHD', 2, 2499.00, 'Samsung', 8, 'un'),
(32, 'Refrigerante Coca-Cola 2L', 24, 8.90, 'Coca-Cola', 9, 'un'),
(33, 'Lasanha Bolonhesa Congelada 600g', 7200, 16.90, 'Sadia', 11, 'g'),
(34, 'Suco de Laranja Integral 1L', 36, 8.50, 'Del Valle', 9, 'un'),
(35, 'Nuggets de Frango', 17, 24.50, 'Seara', 11, 'kg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `FK_produto_2` (`fk_categorias_id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FK_produto_2` FOREIGN KEY (`fk_categorias_id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
