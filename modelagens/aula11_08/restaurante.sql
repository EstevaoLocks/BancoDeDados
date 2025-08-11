-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2025 às 14:01
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `id_area` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`id_area`, `descricao`) VALUES
(1, 'Salão Principal'),
(2, 'Varanda'),
(3, 'Mezanino'),
(4, 'Área VIP'),
(5, 'Área Externa'),
(6, 'Balcão'),
(7, 'Área Infantil'),
(8, 'Salão Lateral'),
(9, 'Deck'),
(10, 'Jardim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id_atendimento` int(11) NOT NULL,
  `horario_entrada` datetime NOT NULL,
  `horario_saida` datetime NOT NULL,
  `qtde_pessoas` int(11) NOT NULL,
  `fk_id_mesa` int(11) NOT NULL,
  `fk_id_garcon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`id_atendimento`, `horario_entrada`, `horario_saida`, `qtde_pessoas`, `fk_id_mesa`, `fk_id_garcon`) VALUES
(1, '2025-08-10 19:00:00', '2025-08-10 20:30:00', 4, 1, 1),
(2, '2025-08-10 19:15:00', '2025-08-10 21:00:00', 2, 2, 2),
(3, '2025-08-10 20:00:00', '2025-08-10 22:00:00', 6, 3, 3),
(4, '2025-08-10 18:30:00', '2025-08-10 20:00:00', 8, 4, 4),
(5, '2025-08-10 21:00:00', '2025-08-10 22:30:00', 4, 5, 5),
(6, '2025-08-10 19:45:00', '2025-08-10 21:10:00', 2, 6, 6),
(7, '2025-08-10 20:15:00', '2025-08-10 23:00:00', 10, 7, 7),
(8, '2025-08-10 18:50:00', '2025-08-10 20:40:00', 6, 8, 8),
(9, '2025-08-10 19:20:00', '2025-08-10 21:30:00', 4, 9, 9),
(10, '2025-08-10 20:30:00', '2025-08-10 22:50:00', 12, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `id_conta` int(11) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `valor_por_pessoa` decimal(10,2) NOT NULL,
  `data_conta` date NOT NULL,
  `fk_id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `valor_total`, `valor_por_pessoa`, `data_conta`, `fk_id_mesa`) VALUES
(1, 140.00, 35.00, '2025-08-10', 1),
(2, 76.00, 38.00, '2025-08-10', 2),
(3, 255.00, 42.50, '2025-08-10', 3),
(4, 447.20, 55.90, '2025-08-10', 4),
(5, 119.60, 29.90, '2025-08-10', 5),
(6, 16.00, 8.00, '2025-08-10', 6),
(7, 120.00, 12.00, '2025-08-10', 7),
(8, 107.40, 17.90, '2025-08-10', 8),
(9, 72.00, 18.00, '2025-08-10', 9),
(10, 240.00, 20.00, '2025-08-10', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcon`
--

CREATE TABLE `garcon` (
  `id_garcon` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garcon`
--

INSERT INTO `garcon` (`id_garcon`, `nome`) VALUES
(1, 'Carlos Souza'),
(2, 'Fernanda Lima'),
(3, 'João Pereira'),
(4, 'Mariana Costa'),
(5, 'Ricardo Alves'),
(6, 'Paula Santos'),
(7, 'Luiz Oliveira'),
(8, 'Tatiane Rocha'),
(9, 'Felipe Ramos'),
(10, 'Ana Beatriz');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`id_item`, `nome`, `preco`) VALUES
(1, 'Pizza Margherita', 35.00),
(2, 'Pizza Calabresa', 38.00),
(3, 'Lasanha Bolonhesa', 42.50),
(4, 'Risoto de Camarão', 55.90),
(5, 'Salada Caesar', 29.90),
(6, 'Suco de Laranja', 8.00),
(7, 'Coca-Cola Lata', 6.50),
(8, 'Chopp Pilsen 500ml', 12.00),
(9, 'Tiramisu', 18.00),
(10, 'Petit Gateau', 20.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_conta`
--

CREATE TABLE `item_conta` (
  `id_itens_conta` int(11) NOT NULL,
  `total_item` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `fk_id_item` int(11) NOT NULL,
  `fk_id_conta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item_conta`
--

INSERT INTO `item_conta` (`id_itens_conta`, `total_item`, `qtde`, `fk_id_item`, `fk_id_conta`) VALUES
(1, 70.00, 2, 1, 1),
(2, 70.00, 2, 2, 1),
(3, 76.00, 2, 2, 2),
(4, 255.00, 6, 3, 3),
(5, 447.20, 8, 4, 4),
(6, 119.60, 4, 5, 5),
(7, 16.00, 2, 6, 6),
(8, 120.00, 10, 8, 7),
(9, 107.40, 6, 7, 8),
(10, 72.00, 4, 9, 9),
(11, 240.00, 12, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `comporta` int(11) NOT NULL,
  `fk_id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `comporta`, `fk_id_area`) VALUES
(1, 4, 1),
(2, 2, 2),
(3, 6, 3),
(4, 8, 4),
(5, 4, 5),
(6, 2, 6),
(7, 10, 7),
(8, 6, 8),
(9, 4, 9),
(10, 12, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`id_area`);

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `fk_id_mesa` (`fk_id_mesa`),
  ADD KEY `fk_id_garcon` (`fk_id_garcon`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_conta`),
  ADD KEY `fk_id_mesa` (`fk_id_mesa`);

--
-- Índices para tabela `garcon`
--
ALTER TABLE `garcon`
  ADD PRIMARY KEY (`id_garcon`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `item_conta`
--
ALTER TABLE `item_conta`
  ADD PRIMARY KEY (`id_itens_conta`),
  ADD KEY `fk_id_item` (`fk_id_item`),
  ADD KEY `fk_id_conta` (`fk_id_conta`);

--
-- Índices para tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `fk_id_area` (`fk_id_area`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcon`
--
ALTER TABLE `garcon`
  MODIFY `id_garcon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item_conta`
--
ALTER TABLE `item_conta`
  MODIFY `id_itens_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`fk_id_mesa`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`fk_id_garcon`) REFERENCES `garcon` (`id_garcon`);

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`fk_id_mesa`) REFERENCES `mesa` (`id_mesa`);

--
-- Limitadores para a tabela `item_conta`
--
ALTER TABLE `item_conta`
  ADD CONSTRAINT `item_conta_ibfk_1` FOREIGN KEY (`fk_id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `item_conta_ibfk_2` FOREIGN KEY (`fk_id_conta`) REFERENCES `conta` (`id_conta`);

--
-- Limitadores para a tabela `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`fk_id_area`) REFERENCES `arearestaurante` (`id_area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
