-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Set-2025 às 05:48
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 40, '1º Andar'),
(3, 35, '2º Andar'),
(4, 45, '3º Andar'),
(5, 30, '4º Andar'),
(6, 20, '5º Andar'),
(7, 25, 'Subsolo 1'),
(8, 25, 'Subsolo 2'),
(9, 15, 'Subsolo 3'),
(10, 60, 'Cobertura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('10101010101', '1991-08-05 00:00:00', 'Juliana Mendes'),
('22222222222', '1985-07-23 00:00:00', 'Bruno Costa'),
('33333333333', '1978-03-15 00:00:00', 'Carlos Souza'),
('44444444444', '1992-11-02 00:00:00', 'Daniela Oliveira'),
('55555555555', '2000-01-30 00:00:00', 'Eduardo Pereira'),
('66666666666', '1995-06-18 00:00:00', 'Fernanda Rocha'),
('77777777777', '1989-09-09 00:00:00', 'Gabriel Martins'),
('88888888888', '1983-12-25 00:00:00', 'Helena Carvalho'),
('99999999999', '1997-04-10 00:00:00', 'Igor Almeida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horsaida` time NOT NULL,
  `dtsaida` date NOT NULL,
  `horentrada` time NOT NULL,
  `dtentrada` date NOT NULL,
  `placa` int(11) NOT NULL,
  `codlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horsaida`, `dtsaida`, `horentrada`, `dtentrada`, `placa`, `codlugar`) VALUES
(2, '11:00:00', '2025-09-01', '09:15:00', '2025-09-01', 2, 2),
(3, '14:45:00', '2025-09-01', '10:00:00', '2025-09-01', 3, 3),
(4, '16:00:00', '2025-09-01', '12:30:00', '2025-09-01', 4, 4),
(5, '18:10:00', '2025-09-01', '13:00:00', '2025-09-01', 5, 5),
(6, '19:20:00', '2025-09-01', '14:30:00', '2025-09-01', 6, 6),
(7, '20:15:00', '2025-09-01', '15:45:00', '2025-09-01', 7, 7),
(8, '21:00:00', '2025-09-01', '16:10:00', '2025-09-01', 8, 8),
(9, '22:05:00', '2025-09-01', '17:00:00', '2025-09-01', 9, 9),
(10, '23:30:00', '2025-09-01', '18:00:00', '2025-09-01', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Fiat Uno'),
(2, 'Honda Civic'),
(3, 'Toyota Corolla'),
(4, 'Chevrolet Onix'),
(5, 'Volkswagen Gol'),
(6, 'Mitsubishi Lancer'),
(7, 'Hyundai HB20'),
(8, 'Renault Kwid'),
(9, 'Jeep Compass'),
(10, 'Nissan Kicks');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` int(11) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
(2, 'Preto', '22222222222', 2),
(3, 'Prata', '33333333333', 3),
(4, 'Branco', '44444444444', 4),
(5, 'Azul', '55555555555', 5),
(6, 'Cinza', '66666666666', 6),
(7, 'Verde', '77777777777', 7),
(8, 'Verde', '88888888888', 8),
(9, 'Preto', '99999999999', 9),
(10, 'Branco', '10101010101', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `placa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
